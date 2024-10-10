import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CreateNoteService {
  Future<void> createNote({
    required String title,
    required String body,
  }) async {
    String userUid = FirebaseAuth.instance.currentUser!.uid;
    final DocumentReference userDoc =
        FirebaseFirestore.instance.collection('users').doc(userUid);

    final response = await userDoc.collection('notes').add({
      'title': title,
      'body': body,
    });
  }
}
