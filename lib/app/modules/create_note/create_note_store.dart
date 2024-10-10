import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/create_note/repository/create_note_repository.dart';
import 'package:keener_notes/app/modules/create_note/response/create_note_response.dart';
import 'package:mobx/mobx.dart';

part 'create_note_store.g.dart';

class CreateNoteStore = CreateNoteStoreBase with _$CreateNoteStore;

abstract class CreateNoteStoreBase with Store {
  final CreateNoteRepository _repository = Modular.get<CreateNoteRepository>();

  @observable
  String titleControllerText = '';

  @observable
  String bodyControllerText = '';

  @action
  Future<CreateNoteResponse> createNewNote() async {
    final response = await _repository.createNote(
        title: titleControllerText, body: bodyControllerText);
    if (response.error == null) {
      Modular.to.navigate('/');
    }
    return response;
  }
}
