import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:keener_notes/app/modules/notes_list/response/notes_list_response.dart';
import 'package:keener_notes/app/shared/mdoels/note_model.dart';

class NotesListService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<NotesListResponse> fetchUserNotes() async {
    final User? user = _auth.currentUser;
    if (user == null) {
      throw Exception('User not logged in');
    }

    final String userUid = user.uid;
    final CollectionReference notesCollection =
        _firestore.collection('users').doc(userUid).collection('notes');

    try {
      final querySnapshot = await notesCollection.get();

      final List<NoteModel> response = querySnapshot.docs
          .map((doc) => NoteModel.fromFirestore(doc))
          .toList();
      return NotesListResponse(notes: response);
    } catch (e) {
      return NotesListResponse(error: e.toString());
    }
  }
}
