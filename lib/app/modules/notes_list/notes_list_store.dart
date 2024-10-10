import 'package:keener_notes/app/shared/mdoels/note_model.dart';
import 'package:mobx/mobx.dart';

part 'notes_list_store.g.dart';

class NotesListStore = NotesListStoreBase with _$NotesListStore;

abstract class NotesListStoreBase with Store {
  @observable
  NoteModel? selectedNote;

  @observable
  List<NoteModel> notes = [
    NoteModel(title: '0', body: 'que corpo'),
    NoteModel(title: '1', body: 'que corpo'),
    NoteModel(title: '2', body: 'que corpo'),
    NoteModel(title: '3', body: 'que corpo'),
    NoteModel(title: '4', body: 'que corpo'),
    NoteModel(title: '5', body: 'que corpo'),
  ];
}
