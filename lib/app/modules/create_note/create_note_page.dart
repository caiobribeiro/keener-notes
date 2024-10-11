import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/create_note/create_note_store.dart';
import 'package:keener_notes/app/shared/widgets/custom_tesxt_fild_widget.dart';

class CreateNotePage extends StatefulWidget {
  const CreateNotePage({
    super.key,
  });

  @override
  State<CreateNotePage> createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  final CreateNoteStore store = Modular.get<CreateNoteStore>();
  final TextEditingController _titleEditingController = TextEditingController();
  final TextEditingController _bodyEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keener Notes'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Modular.to.navigate('/noteslist/');
          },
        ),
        actions: [
          TextButton.icon(
            label: const Text('Save'),
            icon: const Icon(Icons.save),
            onPressed: store.createNewNote,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 70),
              child: Text(
                'New Note',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: CustomTesxtFildWidget(
                controller: _titleEditingController,
                hintText: 'Note Title',
                onChange: (value) {
                  store.titleControllerText = value;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: CustomTesxtFildWidget(
                controller: _bodyEditingController,
                hintText: 'Note body',
                maxLines: 10,
                onChange: (value) {
                  store.bodyControllerText = value;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
