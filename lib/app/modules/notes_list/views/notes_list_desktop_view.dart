import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NotesListDesktopView extends StatefulWidget {
  const NotesListDesktopView({super.key});

  @override
  State<NotesListDesktopView> createState() => _NotesListDesktopViewState();
}

class _NotesListDesktopViewState extends State<NotesListDesktopView> {
  @override
  Widget build(BuildContext context) {
    final leading = SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        children: [
          ListTile(
            title: const Text('New Note'),
            onTap: () => Modular.to.navigate('/createnote/'),
          ),
          ListTile(
            title: const Text('update note'),
            onTap: () => Modular.to.navigate('/updatenote/'),
          ),
        ],
      ),
    );
    return Scaffold(
      body: Row(
        children: [
          leading,
          Container(width: 2, color: Colors.black45),
          const Expanded(child: RouterOutlet()),
        ],
      ),
    );
  }
}
