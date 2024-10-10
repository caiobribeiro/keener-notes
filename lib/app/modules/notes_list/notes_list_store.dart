import 'package:mobx/mobx.dart';

part 'notes_list_store.g.dart';

class NotesListStore = NotesListStoreBase with _$NotesListStore;

abstract class NotesListStoreBase with Store {
  @observable
  List<String> notes = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
  ];
}
