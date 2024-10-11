import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/notes_list/models/page_state.dart';
import 'package:keener_notes/app/modules/notes_list/notes_list_store.dart';
import 'package:keener_notes/app/shared/mdoels/note_model.dart';
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
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: CustomButtonWidget(
                    text: 'New Note',
                    onPressed: () {
                      Modular.to.navigate('/newnote/');
                    },
                  ),
                ),
                Observer(builder: (_) {
                  return Column(
                    children: [
                      if (store.pageState == PageState.loading) ...[
                        const CircularProgressIndicator(),
                      ],
                      if (store.pageState == PageState.empty) ...[
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                              "You have no notes, let's create your first one?"),
                        )
                      ],
                      if (store.pageState == PageState.loaded) ...[
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .8,
                          child: _listNotes(context, store.notes!),
                        ),
                      ],
                    ],
                  );
                }),
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
                    ? const Center(child: Text('No note selected'))
                    : Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(selectedNote.title,
                                    style: const TextStyle(fontSize: 24)),
                                const SizedBox(height: 10),
                                Text(
                                  selectedNote.body,
                                ),
                              ],
                            ),
                            Center(
                              child: CustomButtonWidget(
                                  onPressed: () {
                                    Modular.to.navigate('/updatenote/',
                                        arguments: store.selectedNote);
                                  },
                                  text: 'Edit Note'),
                            ),
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

  Widget _listNotes(BuildContext context, List<NoteModel> notes) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: store.notes!.length,
      itemBuilder: (context, index) {
        final NoteModel note = store.notes![index];
        return Column(
          children: [
            const Divider(),
            ListTile(
              title: Text(note.title),
              onTap: () {
                store.selectNote(note);
              },
            ),
          ],
        );
      },
    );
  }
}
