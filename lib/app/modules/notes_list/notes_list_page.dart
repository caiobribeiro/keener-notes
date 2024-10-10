import 'package:flutter/material.dart';
import 'package:keener_notes/app/shared/utils/responsive_layout.dart';
import 'package:keener_notes/app/modules/notes_list/views/notes_list_desktop_view.dart';

class NotesListPage extends StatefulWidget {
  const NotesListPage({
    super.key,
  });

  @override
  State<NotesListPage> createState() => _NotesListPageState();
}

class _NotesListPageState extends State<NotesListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keener notes'),
      ),
      body: ResponsiveLayout(
        mobileBody: Container(),
        tabletBody: Container(),
        desktopBody: const NotesListDesktopView(),
      ),
    );
  }
}
