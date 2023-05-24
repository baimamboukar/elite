// ignore_for_file: avoid_dynamic_calls

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elite_one/src/features/auth/data/models/elite_user.dart';
import 'package:elite_one/src/features/auth/data/services/firestore_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
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

  Future<EliteUser> continueWithFacebook() async {
    try {
      final result = await FacebookAuth.instance.login();

      final accessToken = result.accessToken;
      final facebookAuthCredential =
          FacebookAuthProvider.credential(accessToken!.token);

      final userCredential =
          await _auth.signInWithCredential(facebookAuthCredential);

      final user = userCredential.user;

      final userSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(user!.uid)
          .get();

      if (!userSnapshot.exists) {
        final userData = await FacebookAuth.instance.getUserData();

        final eliteUser = EliteUser(
          id: user.uid,
          name: userData['name'] as String,
          email: userData['email'] as String,
          phone: userData['phone'] as String,
          imageURL: (userData['picture'] as Map<String, dynamic>)['data']['url']
              as String,
        );

        final saved =
            await _firestoreAuthServices.saveUserDataToFirestore(eliteUser);
        if (saved) {
          return eliteUser;
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

  Future<void> logout() async {
    await Future.wait([
      _auth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }
}
