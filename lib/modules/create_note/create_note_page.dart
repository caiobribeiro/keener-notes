import 'package:flutter/material.dart';

class CreateNotePage extends StatefulWidget {
  const CreateNotePage({
    super.key,
  });

  @override
  State<CreateNotePage> createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
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
            Text('create note'),
          ],
        ),
      ),
    );
  }
}
