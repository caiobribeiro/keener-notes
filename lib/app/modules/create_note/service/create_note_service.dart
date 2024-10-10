import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:keener_notes/app/modules/create_note/response/create_note_response.dart';
import 'package:keener_notes/app/shared/mdoels/note_model.dart';

class CreateNoteService {
  Future<CreateNoteResponse> createNote({
    required String title,
    required String body,
  }) async {
    String userUid = FirebaseAuth.instance.currentUser!.uid;
    final DocumentReference userDoc =
        FirebaseFirestore.instance.collection('users').doc(userUid);

    try {
      final DocumentReference response = await userDoc.collection('notes').add({
        'title': title,
        'body': body,
      });
      return CreateNoteResponse(
        note: NoteModel(
          title: title,
          body: body,
          id: response.id,
        ),
      );
    } catch (e) {
      return CreateNoteResponse(
        error: e.toString(),
      );
    }
  }
}
