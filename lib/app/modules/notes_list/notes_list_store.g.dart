// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NotesListStore on NotesListStoreBase, Store {
  late final _$selectedNoteAtom =
      Atom(name: 'NotesListStoreBase.selectedNote', context: context);

  @override
  NoteModel? get selectedNote {
    _$selectedNoteAtom.reportRead();
    return super.selectedNote;
  }

  @override
  set selectedNote(NoteModel? value) {
    _$selectedNoteAtom.reportWrite(value, super.selectedNote, () {
      super.selectedNote = value;
    });
  }

  late final _$notesAtom =
      Atom(name: 'NotesListStoreBase.notes', context: context);

  @override
  List<NoteModel> get notes {
    _$notesAtom.reportRead();
    return super.notes;
  }

  @override
  set notes(List<NoteModel> value) {
    _$notesAtom.reportWrite(value, super.notes, () {
      super.notes = value;
    });
  }

  late final _$fetchUserNotesAsyncAction =
      AsyncAction('NotesListStoreBase.fetchUserNotes', context: context);

  @override
  Future<NotesListResponse> fetchUserNotes() {
    return _$fetchUserNotesAsyncAction.run(() => super.fetchUserNotes());
  }

  late final _$logoutAsyncAction =
      AsyncAction('NotesListStoreBase.logout', context: context);

  @override
  Future<void> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  late final _$NotesListStoreBaseActionController =
      ActionController(name: 'NotesListStoreBase', context: context);

  @override
  dynamic selectNote(NoteModel note) {
    final _$actionInfo = _$NotesListStoreBaseActionController.startAction(
        name: 'NotesListStoreBase.selectNote');
    try {
      return super.selectNote(note);
    } finally {
      _$NotesListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedNote: ${selectedNote},
notes: ${notes}
    ''';
  }
}
