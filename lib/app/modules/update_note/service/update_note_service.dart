import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:keener_notes/app/modules/update_note/response/update_note_response.dart';

class UpdateNoteService {
  Future<UpdateNoteResponse> updateNote({
    required String noteId,
    required String title,
    required String body,
  }) async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final FirebaseFirestore firestore = FirebaseFirestore.instance;
    final User? user = auth.currentUser;

    final String userUid = user!.uid;
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
      return UpdateNoteResponse(success: true);
    } catch (e) {
      return UpdateNoteResponse(success: false, error: e.toString());
    }
  }
}
