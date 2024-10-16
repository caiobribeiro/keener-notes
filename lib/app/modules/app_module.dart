import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/create_note/create_note_module.dart';
import 'package:keener_notes/app/modules/notes_list/notes_list_module.dart';
import 'package:keener_notes/app/modules/signin/signin_module.dart';
import 'package:keener_notes/app/modules/signup/signup_module.dart';
import 'package:keener_notes/app/modules/update_note/update_note_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('/', module: SigninModule());
    r.module('/noteslist', module: NotesListModule());
    r.module('/signup', module: SignupModule());
    r.module('/newnote', module: CreateNoteModule());
    r.module('/updatenote', module: UpdateNoteModule());
  }
}
