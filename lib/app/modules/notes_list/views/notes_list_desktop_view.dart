import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/notes_list/notes_list_store.dart';
import 'package:keener_notes/app/shared/widgets/custom_button_widget.dart';

class NotesListDesktopView extends StatefulWidget {
  const NotesListDesktopView({super.key});

  @override
  State<NotesListDesktopView> createState() => _NotesListDesktopViewState();
}

class _NotesListDesktopViewState extends State<NotesListDesktopView> {
  final NotesListStore store = Modular.get<NotesListStore>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                CustomButtonWidget(
                    onPressed: () {
                      Modular.to.pushNamed('/newnote/');
                    },
                    text: 'New Note'),
                Observer(
                  builder: (_) => ListView.builder(
                    shrinkWrap: true,
                    itemCount: store.notes.length,
                    itemBuilder: (context, index) {
                      final note = store.notes[index];
                      return ListTile(
                        title: Text(note.title),
                        onTap: () {
                          store.selectedNote = note;
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(width: 2, color: Colors.black45),
          Expanded(
            flex: 2,
            child: Observer(
              builder: (_) {
                final selectedNote = store.selectedNote;
                return selectedNote == null
                    ? const Center(child: Text('Nenhuma nota selecionada'))
                    : Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(selectedNote.title,
                                style: const TextStyle(fontSize: 24)),
                            const SizedBox(height: 10),
                            Text(selectedNote.body),
                          ],
                        ),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
