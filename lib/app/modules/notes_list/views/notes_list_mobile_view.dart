import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/notes_list/notes_list_store.dart';

class NotesListMobileView extends StatefulWidget {
  const NotesListMobileView({super.key});

  @override
  State<NotesListMobileView> createState() => _NotesListMobileViewState();
}

class _NotesListMobileViewState extends State<NotesListMobileView> {
  final NotesListStore store = Modular.get<NotesListStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: store.notes.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(store.notes[index]), onTap: () {});
        },
      ),
    );
  }
}
