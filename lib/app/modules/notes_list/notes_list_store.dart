import 'package:mobx/mobx.dart';

part 'notes_list_store.g.dart';

class NotesListStore = NotesListStoreBase with _$NotesListStore;

abstract class NotesListStoreBase with Store {}
