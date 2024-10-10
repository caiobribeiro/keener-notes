import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UpdateNoteService {
  Future<void> updateNote({
    required String noteId,
    required String title,
    required String body,
  }) async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final FirebaseFirestore firestore = FirebaseFirestore.instance;
    final User? user = auth.currentUser;
    if (user == null) {
      throw Exception('User not logged in');
    }

    final String userUid = user.uid;
    final DocumentReference noteDoc = firestore
        .collection('users')
        .doc(userUid)
        .collection('notes')
        .doc(noteId);

    try {
      await noteDoc.update({
        'title': title,
        'body': body,
      });
    } catch (e) {
      throw Exception('Failed to update note: $e');
    }
  }
}
