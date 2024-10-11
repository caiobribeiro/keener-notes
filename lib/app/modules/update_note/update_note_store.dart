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
  String title = '';

  @action
  void setTitle(String value) => title = value;

  @observable
  String body = '';

  @action
  void setBody(String value) => body = value;

  @action
  fillNote(NoteModel note) {
    setTitle(note.title);
    setBody(note.body);
  }

  @action
  Future<UpdateNoteResponse> updateNote({required String noteId}) async {
    final response = await _repository.updateNote(
      noteId: noteId,
      title: title,
      body: body,
    );
    if (response.success) {
      Modular.to.navigate('/noteslist/');
    }

    return response;
  }
}
