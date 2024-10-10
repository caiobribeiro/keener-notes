import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/update_note/service/update_note_service.dart';
import 'package:keener_notes/app/shared/mdoels/note_model.dart';
import 'package:keener_notes/app/shared/widgets/custom_button_widget.dart';

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
  final UpdateNoteService _noteService = Modular.get<UpdateNoteService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.note.title),
            Text(widget.note.body),
            Text(widget.note.id!),
            CustomButtonWidget(
              text: 'update',
              onPressed: () async {
                await _noteService.updateNote(
                  noteId: widget.note.id!,
                  title: 'Atualizado',
                  body: 'Muito atualizado',
                );
                Modular.to.navigate('/noteslist/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
