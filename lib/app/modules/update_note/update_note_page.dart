import 'package:flutter/material.dart';
import 'package:keener_notes/app/shared/mdoels/note_model.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.note.title),
          ],
        ),
      ),
    );
  }
}
