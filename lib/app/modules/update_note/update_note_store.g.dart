// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_note_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UpdateNoteStore on UpdateNoteStoreBase, Store {
  late final _$titleAtom =
      Atom(name: 'UpdateNoteStoreBase.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$bodyAtom =
      Atom(name: 'UpdateNoteStoreBase.body', context: context);

  @override
  String get body {
    _$bodyAtom.reportRead();
    return super.body;
  }

  @override
  set body(String value) {
    _$bodyAtom.reportWrite(value, super.body, () {
      super.body = value;
    });
  }

  late final _$updateNoteAsyncAction =
      AsyncAction('UpdateNoteStoreBase.updateNote', context: context);

  @override
  Future<UpdateNoteResponse> updateNote({required String noteId}) {
    return _$updateNoteAsyncAction.run(() => super.updateNote(noteId: noteId));
  }

  late final _$UpdateNoteStoreBaseActionController =
      ActionController(name: 'UpdateNoteStoreBase', context: context);

  @override
  void setTitle(String value) {
    final _$actionInfo = _$UpdateNoteStoreBaseActionController.startAction(
        name: 'UpdateNoteStoreBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$UpdateNoteStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBody(String value) {
    final _$actionInfo = _$UpdateNoteStoreBaseActionController.startAction(
        name: 'UpdateNoteStoreBase.setBody');
    try {
      return super.setBody(value);
    } finally {
      _$UpdateNoteStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic fillNote(NoteModel note) {
    final _$actionInfo = _$UpdateNoteStoreBaseActionController.startAction(
        name: 'UpdateNoteStoreBase.fillNote');
    try {
      return super.fillNote(note);
    } finally {
      _$UpdateNoteStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
body: ${body}
    ''';
  }
}
