import 'package:keener_notes/app/shared/mdoels/note_model.dart';

class CreateNoteResponse {
  final NoteModel? note;
  final String? error;
  CreateNoteResponse({
    this.note,
    this.error,
  });
}
