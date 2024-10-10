import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/update_note/update_note_page.dart';
import 'package:keener_notes/app/modules/update_note/update_note_store.dart';

class UpdateNoteModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<UpdateNoteStore>(UpdateNoteStore.new);
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => UpdateNotePage(
        id: r.args.queryParams['id']!,
      ),
    );
  }
}
