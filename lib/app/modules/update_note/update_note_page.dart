import 'package:flutter/material.dart';

class UpdateNotePage extends StatefulWidget {
  final String id;
  const UpdateNotePage({
    super.key,
    required this.id,
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
            Text(widget.id),
          ],
        ),
      ),
    );
  }
}
