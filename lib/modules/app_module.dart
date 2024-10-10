import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/modules/create_note/create_note_module.dart';
import 'package:keener_notes/modules/signin/signin_module.dart';
import 'package:keener_notes/modules/signup/signup_module.dart';
import 'package:keener_notes/modules/update_note/update_note_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('/signup', module: SignupModule());
    r.module('/signin', module: SigninModule());
    r.module('/createnote', module: CreateNoteModule());
    r.module('/updatenote', module: UpdateNoteModule());
  }
}
