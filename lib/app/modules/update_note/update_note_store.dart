import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/update_note/repository/update_note_repository.dart';
import 'package:keener_notes/app/modules/update_note/response/update_note_response.dart';
import 'package:keener_notes/app/shared/mdoels/note_model.dart';
import 'package:mobx/mobx.dart';

part 'update_note_store.g.dart';

class UpdateNoteStore = UpdateNoteStoreBase with _$UpdateNoteStore;

abstract class UpdateNoteStoreBase with Store {
  final UpdateNoteRepository _repository = Modular.get<UpdateNoteRepository>();

  @observable
  String titleControllerText = '';

  @observable
  String bodyControllerText = '';

  @action
  fillNote(NoteModel note) {
    titleControllerText = note.title;
    bodyControllerText = note.body;
  }

  @action
  Future<UpdateNoteResponse> updateNote({required String noteId}) async {
    final response = await _repository.updateNote(
      noteId: noteId,
      title: titleControllerText,
      body: bodyControllerText,
    );
    if (response.success) {
      Modular.to.navigate('/noteslist/');
    }

    return response;
  }
}
