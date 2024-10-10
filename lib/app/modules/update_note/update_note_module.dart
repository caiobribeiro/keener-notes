import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/update_note/repository/update_note_repository.dart';
import 'package:keener_notes/app/modules/update_note/service/update_note_service.dart';
import 'package:keener_notes/app/modules/update_note/update_note_page.dart';
import 'package:keener_notes/app/modules/update_note/update_note_store.dart';

class UpdateNoteModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<UpdateNoteStore>(UpdateNoteStore.new);

    i.addSingleton<UpdateNoteService>(UpdateNoteService.new);
    i.addSingleton<UpdateNoteRepository>(UpdateNoteRepositoryImpl.new);
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => UpdateNotePage(
        note: r.args.data,
      ),
    );
  }
}
