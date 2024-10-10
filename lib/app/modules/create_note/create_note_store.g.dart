// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_note_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateNoteStore on CreateNoteStoreBase, Store {
  late final _$titleControllerTextAtom =
      Atom(name: 'CreateNoteStoreBase.titleControllerText', context: context);

  @override
  String get titleControllerText {
    _$titleControllerTextAtom.reportRead();
    return super.titleControllerText;
  }

  @override
  set titleControllerText(String value) {
    _$titleControllerTextAtom.reportWrite(value, super.titleControllerText, () {
      super.titleControllerText = value;
    });
  }

  late final _$bodyControllerTextAtom =
      Atom(name: 'CreateNoteStoreBase.bodyControllerText', context: context);

  @override
  String get bodyControllerText {
    _$bodyControllerTextAtom.reportRead();
    return super.bodyControllerText;
  }

  @override
  set bodyControllerText(String value) {
    _$bodyControllerTextAtom.reportWrite(value, super.bodyControllerText, () {
      super.bodyControllerText = value;
    });
  }

  late final _$createNewNoteAsyncAction =
      AsyncAction('CreateNoteStoreBase.createNewNote', context: context);

  @override
  Future<CreateNoteResponse> createNewNote() {
    return _$createNewNoteAsyncAction.run(() => super.createNewNote());
  }

  @override
  String toString() {
    return '''
titleControllerText: ${titleControllerText},
bodyControllerText: ${bodyControllerText}
    ''';
  }
}
