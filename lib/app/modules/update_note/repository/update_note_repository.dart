import 'package:keener_notes/app/modules/update_note/response/update_note_response.dart';
import 'package:keener_notes/app/modules/update_note/service/update_note_service.dart';

abstract class UpdateNoteRepository {
  Future<UpdateNoteResponse> updateNote({
    required String noteId,
    required String title,
    required String body,
  });
}

class UpdateNoteRepositoryImpl implements UpdateNoteRepository {
  final UpdateNoteService _service;

  UpdateNoteRepositoryImpl(this._service);

  @override
  Future<UpdateNoteResponse> updateNote({
    required String noteId,
    required String title,
    required String body,
  }) async {
    return _service.updateNote(noteId: noteId, title: title, body: body);
  }
}
