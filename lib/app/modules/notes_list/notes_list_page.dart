import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:keener_notes/app/modules/notes_list/notes_list_store.dart';
import 'package:keener_notes/app/modules/notes_list/views/notes_list_mobile_view.dart';
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
  final NotesListStore store = Modular.get<NotesListStore>();

  @override
  void initState() {
    store.fetchUserNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keener notes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              store.logout();
            },
          )
        ],
      ),
      body: const ResponsiveLayout(
        mobileBody: NotesListMobileView(),
        tabletBody: NotesListDesktopView(),
        desktopBody: NotesListDesktopView(),
      ),
    );
  }
}
