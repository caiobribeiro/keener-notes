import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/create_note/create_note_page.dart';
import 'package:keener_notes/app/modules/create_note/create_note_store.dart';
import 'package:keener_notes/app/modules/create_note/repository/create_note_repository.dart';
import 'package:keener_notes/app/modules/create_note/service/create_note_service.dart';

class CreateNoteModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<CreateNoteStore>(CreateNoteStore.new);
    i.addSingleton<CreateNoteService>(CreateNoteService.new);
    i.addSingleton<CreateNoteRepository>(CreateNoteRepositoryImpl.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const CreateNotePage());
  }
}
