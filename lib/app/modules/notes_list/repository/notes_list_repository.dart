import 'package:keener_notes/app/modules/notes_list/response/notes_list_response.dart';
import 'package:keener_notes/app/modules/notes_list/service/notes_list_service.dart';

abstract class NotesListRepository {
  Future<NotesListResponse> fetchUserNotes();
  Future<void> logout();
}

class NotesListRepositoryImpl implements NotesListRepository {
  final NotesListService _service;

  NotesListRepositoryImpl(this._service);

  @override
  Future<NotesListResponse> fetchUserNotes() async {
    return _service.fetchUserNotes();
  }

  @override
  Future<void> logout() async {
    _service.signOut();
  }
}
