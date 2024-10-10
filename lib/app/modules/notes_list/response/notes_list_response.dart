import 'package:keener_notes/app/shared/mdoels/note_model.dart';

class NotesListResponse {
  final List<NoteModel>? notes;
  final String? error;
  NotesListResponse({
    this.notes,
    this.error,
  });
}
