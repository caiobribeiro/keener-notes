import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/notes_list/repository/notes_list_repository.dart';
import 'package:keener_notes/app/modules/notes_list/response/notes_list_response.dart';
import 'package:keener_notes/app/shared/mdoels/note_model.dart';
import 'package:mobx/mobx.dart';

part 'notes_list_store.g.dart';

class NotesListStore = NotesListStoreBase with _$NotesListStore;

abstract class NotesListStoreBase with Store {
  final NotesListRepository _repository = Modular.get<NotesListRepository>();
  @observable
  NoteModel? selectedNote;

  @observable
  List<NoteModel> notes = [];

  @action
  selectNote(NoteModel note) {
    selectedNote = note;
  }

  @action
  Future<NotesListResponse> fetchUserNotes() async {
    final response = await _repository.fetchUserNotes();

    if (response.notes != null) {
      if (response.notes!.isNotEmpty) {
        notes = response.notes!;
      }
    }

    return response;
  }

  @action
  Future<void> logout() async {
    await _repository.logout();
    Modular.to.navigate('/');
  }
}
