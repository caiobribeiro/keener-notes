import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/update_note/update_note_store.dart';
import 'package:keener_notes/app/shared/mdoels/note_model.dart';
import 'package:keener_notes/app/shared/widgets/custom_tesxt_fild_widget.dart';

class UpdateNotePage extends StatefulWidget {
  final NoteModel note;
  const UpdateNotePage({
    super.key,
    required this.note,
  });

  @override
  State<UpdateNotePage> createState() => _UpdateNotePageState();
}

class _UpdateNotePageState extends State<UpdateNotePage> {
  final UpdateNoteStore store = Modular.get<UpdateNoteStore>();

  final TextEditingController _titleEditingController = TextEditingController();
  final TextEditingController _bodyEditingController = TextEditingController();

  @override
  void initState() {
    store.fillNote(widget.note);
    _titleEditingController.text = widget.note.title;
    _bodyEditingController.text = widget.note.body;
    super.initState();
  }

  @override
  void dispose() {
    _titleEditingController.dispose();
    _bodyEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keener Notes'),
        leading: IconButton(
          onPressed: () {
            Modular.to.navigate('/noteslist/');
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          TextButton.icon(
            label: const Text('Save'),
            icon: const Icon(Icons.save),
            onPressed: () {
              store.updateNote(noteId: widget.note.id!);
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 70),
                child: Text(
                  'Update Note',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: CustomTesxtFildWidget(
                controller: _titleEditingController,
                hintText: 'Note Title',
                onChange: store.setTitle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: CustomTesxtFildWidget(
                controller: _bodyEditingController,
                hintText: 'Note body',
                maxLines: 10,
                onChange: store.setBody,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
