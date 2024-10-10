import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/notes_list/notes_list_page.dart';
import 'package:keener_notes/app/modules/notes_list/notes_list_store.dart';
import 'package:keener_notes/app/modules/notes_list/service/notes_list_service.dart';

class NotesListModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<NotesListStore>(NotesListStore.new);
    i.addSingleton<NotesListService>(NotesListService.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const NotesListPage());
  }
}
