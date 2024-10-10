import 'package:flutter/material.dart';

class UpdateNotePage extends StatefulWidget {
  const UpdateNotePage({
    super.key,
  });

  @override
  State<UpdateNotePage> createState() => _UpdateNotePageState();
}

class _UpdateNotePageState extends State<UpdateNotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keener notes'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('update note'),
          ],
        ),
      ),
    );
  }
}
