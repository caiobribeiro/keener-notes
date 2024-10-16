import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/notes_list/models/page_state.dart';
import 'package:keener_notes/app/modules/notes_list/repository/notes_list_repository.dart';
import 'package:keener_notes/app/modules/notes_list/response/notes_list_response.dart';
import 'package:keener_notes/app/shared/mdoels/note_model.dart';
import 'package:mobx/mobx.dart';

part 'notes_list_store.g.dart';

class NotesListStore = NotesListStoreBase with _$NotesListStore;

abstract class NotesListStoreBase with Store {
  final NotesListRepository _repository = Modular.get<NotesListRepository>();

  @observable
  PageState pageState = PageState.loading;

  @action
  void setPageState(PageState value) => pageState = value;

  @observable
  NoteModel? selectedNote;

  @observable
  List<NoteModel>? notes;

  @action
  selectNote(NoteModel note) {
    selectedNote = note;
  }

  @action
  Future<NotesListResponse> fetchUserNotes() async {
    final response = await _repository.fetchUserNotes();

    if (response.notes != null) {
      if (response.notes!.isNotEmpty) {
        setPageState(PageState.loaded);

        notes = response.notes!;
      }
      if (response.notes!.isEmpty) {
        setPageState(PageState.empty);
        notes = [];
      }
    } else {
      setPageState(PageState.empty);
      notes = [];
    }

    return response;
  }

  @action
  Future<void> logout() async {
    await _repository.logout();
    Modular.to.navigate('/');
  }
}
