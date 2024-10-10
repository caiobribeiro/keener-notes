import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/create_note/create_note_module.dart';
import 'package:keener_notes/app/modules/notes_list/notes_list_page.dart';
import 'package:keener_notes/app/modules/notes_list/notes_list_store.dart';
import 'package:keener_notes/app/modules/update_note/update_note_module.dart';

class NotesListModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<NotesListStore>(NotesListStore.new);
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => const NotesListPage(),
      children: [
        ModuleRoute('/updatenote', module: UpdateNoteModule()),
        ModuleRoute('/createnote', module: CreateNoteModule()),
      ],
    );
  }
}
