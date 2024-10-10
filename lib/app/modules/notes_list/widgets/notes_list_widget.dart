import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/notes_list/notes_list_store.dart';

class NotesListWidget extends StatefulWidget {
  const NotesListWidget({super.key});

  @override
  State<NotesListWidget> createState() => _NotesListWidgetState();
}

class _NotesListWidgetState extends State<NotesListWidget> {
  final NotesListStore store = Modular.get<NotesListStore>();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: store.notes.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(store.notes[index].title),
          onTap: () {},
        );
      },
    );
  }
}
