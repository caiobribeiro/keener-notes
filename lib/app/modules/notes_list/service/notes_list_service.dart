import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:keener_notes/app/shared/mdoels/note_model.dart';

class NotesListService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<NoteModel>> fetchUserNotes() async {
    final User? user = _auth.currentUser;
    if (user == null) {
      // Handle the case where the user is not logged in.
      throw Exception('User not logged in');
    }

    final String userUid = user.uid;
    final CollectionReference notesCollection =
        _firestore.collection('users').doc(userUid).collection('notes');

    final querySnapshot = await notesCollection.get();
    return querySnapshot.docs
        .map((doc) => NoteModel.fromFirestore(doc))
        .toList();
  }
}
