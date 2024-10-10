import 'package:keener_notes/app/modules/create_note/response/create_note_response.dart';
import 'package:keener_notes/app/modules/create_note/service/create_note_service.dart';

abstract class CreateNoteRepository {
  Future<CreateNoteResponse> createNote({
    required String title,
    required String body,
  });
}

class CreateNoteRepositoryImpl implements CreateNoteRepository {
  final CreateNoteService _service;

  CreateNoteRepositoryImpl(this._service);

  @override
  Future<CreateNoteResponse> createNote({
    required String title,
    required String body,
  }) async {
    return _service.createNote(title: title, body: body);
  }
}
