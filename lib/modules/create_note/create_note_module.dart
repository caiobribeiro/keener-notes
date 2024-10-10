import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/modules/create_note/create_note_page.dart';
import 'package:keener_notes/modules/create_note/create_note_store.dart';

class CreateNoteModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<CreateNoteStore>(CreateNoteStore.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const CreateNotePage());
  }
}
