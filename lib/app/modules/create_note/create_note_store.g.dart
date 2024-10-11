// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_note_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateNoteStore on CreateNoteStoreBase, Store {
  late final _$titleAtom =
      Atom(name: 'CreateNoteStoreBase.title', context: context);

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
      Atom(name: 'CreateNoteStoreBase.body', context: context);

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

  late final _$createNewNoteAsyncAction =
      AsyncAction('CreateNoteStoreBase.createNewNote', context: context);

  @override
  Future<CreateNoteResponse> createNewNote() {
    return _$createNewNoteAsyncAction.run(() => super.createNewNote());
  }

  late final _$CreateNoteStoreBaseActionController =
      ActionController(name: 'CreateNoteStoreBase', context: context);

  @override
  void setTitle(String value) {
    final _$actionInfo = _$CreateNoteStoreBaseActionController.startAction(
        name: 'CreateNoteStoreBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$CreateNoteStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBody(String value) {
    final _$actionInfo = _$CreateNoteStoreBaseActionController.startAction(
        name: 'CreateNoteStoreBase.setBody');
    try {
      return super.setBody(value);
    } finally {
      _$CreateNoteStoreBaseActionController.endAction(_$actionInfo);
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
