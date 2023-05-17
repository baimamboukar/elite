import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elite_one/src/features/auth/data/models/elite_user.dart';
import 'package:elite_one/src/features/auth/data/services/firestore_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class EliteAuthServices {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'profile',
      'https://www.googleapis.com/auth/drive.file',
    ],
  );
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirestoreAuthServices _firestoreAuthServices = FirestoreAuthServices();

  Future<EliteUser> continueWithGoogle() async {
    try {
      final googleSignInAccount = await _googleSignIn.signIn();
      final googleSignInAuth = await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuth.accessToken,
        idToken: googleSignInAuth.idToken,
      );
      final userCredential = await _auth.signInWithCredential(credential);

      // Store additional user data to Firestore if user does not exist
      final user = userCredential.user;
      final DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(user!.uid)
          .get();
      if (!userSnapshot.exists) {
        final omnisenseUser = EliteUser(
          id: user.uid,
          name: user.displayName!,
          email: user.email!,
          phone: user.phoneNumber ?? '',
          imageURL: user.photoURL,
        );
        final saved =
            await _firestoreAuthServices.saveUserDataToFirestore(omnisenseUser);
        if (saved) {
          return omnisenseUser;
        } else {
          throw Exception('The user information could not be saved');
        }
      } else {
        final eliteUser =
            await _firestoreAuthServices.getUserDataFromFirestore(user.uid);
        return eliteUser;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<EliteUser> signInWithGoogle() async {
    try {
      final googleSignInAccount = await _googleSignIn.signIn();
      final googleSignInAuth = await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuth.accessToken,
        idToken: googleSignInAuth.idToken,
      );
      final userCredential = await _auth.signInWithCredential(credential);

      // Store additional user data to Firestore
      final user = userCredential.user;
      final DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(user!.uid)
          .get();
      if (!userSnapshot.exists) {
        final omnisenseUser = EliteUser(
          id: user.uid,
          name: user.displayName!,
          email: user.email!,
          phone: user.displayName ?? '',
          imageURL: user.photoURL,
        );
        final saved =
            await _firestoreAuthServices.saveUserDataToFirestore(omnisenseUser);
        if (saved) {
          return omnisenseUser;
        } else {
          throw Exception('The user information could not be saved');
        }
      } else {
        final omnisenseUser =
            await _firestoreAuthServices.getUserDataFromFirestore(user.uid);
        return omnisenseUser;
      }
    } catch (err) {
      rethrow;
    }
  }

  Future<void> logout() async {
    await Future.wait([
      _auth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }
}
