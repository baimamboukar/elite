import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elite_one/src/features/auth/data/models/elite_user.dart';

class FirestoreAuthServices {
  Future<bool> saveUserDataToFirestore(EliteUser user) async {
    try {
      final DocumentReference userRef =
          FirebaseFirestore.instance.collection('users').doc(user.id);
      await userRef.set(user.toMap());
      return true;
    } catch (err) {
      rethrow;
    }
  }

  Future<EliteUser> getUserDataFromFirestore(String userId) async {
    try {
      final DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .get();
      if (userSnapshot.exists) {
        final userData = userSnapshot.data() as Map<String, dynamic>?;
        if (userData != null) {
          return EliteUser.fromMap(userData);
        } else {
          throw Exception('The user has no data');
        }
      } else {
        throw Exception('The user is not found');
      }
    } catch (err) {
      rethrow;
    }
  }
}
