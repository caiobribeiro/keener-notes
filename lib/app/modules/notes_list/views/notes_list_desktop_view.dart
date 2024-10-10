import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/notes_list/notes_list_store.dart';

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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Column(
              children: [
                ListTile(
                  title: const Text('New Note'),
                  onTap: () => Modular.to.navigate('/noteslist/createnote'),
                ),
                Observer(builder: (_) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.8,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: store.notes.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(store.notes[index]),
                          onTap: () {
                            Modular.to.navigate(
                                '/noteslist/updatenote/?id=${store.notes[index]}');
                          },
                        );
                      },
                    ),
                  );
                }),
              ],
            ),
          ),
          Container(width: 2, color: Colors.black45),
          const Expanded(child: RouterOutlet()),
        ],
      ),
    );
  }
}
