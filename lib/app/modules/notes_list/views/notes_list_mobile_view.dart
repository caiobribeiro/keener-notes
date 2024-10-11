import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/notes_list/notes_list_store.dart';
import 'package:keener_notes/app/shared/mdoels/note_model.dart';
import 'package:keener_notes/app/shared/widgets/custom_button_widget.dart';

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
      body: Center(
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
                  store.notes.isEmpty
                      ? const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                              "You have no notes, let's create your first one?"),
                        )
                      : SizedBox(
                          height: MediaQuery.of(context).size.height * .8,
                          child: _listNotes(context, store.notes),
                        ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _listNotes(BuildContext context, List<NoteModel> notes) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: store.notes.length,
      itemBuilder: (context, index) {
        final note = store.notes[index];
        return Column(
          children: [
            const Divider(),
            ListTile(
              title: Text(note.title),
              onTap: () {
                Modular.to.navigate('/updatenote/', arguments: note);
              },
            ),
          ],
        );
      },
    );
  }
}
