// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NotesListStore on NotesListStoreBase, Store {
  late final _$notesAtom =
      Atom(name: 'NotesListStoreBase.notes', context: context);

  @override
  List<String> get notes {
    _$notesAtom.reportRead();
    return super.notes;
  }

  @override
  set notes(List<String> value) {
    _$notesAtom.reportWrite(value, super.notes, () {
      super.notes = value;
    });
  }

  @override
  String toString() {
    return '''
notes: ${notes}
    ''';
  }
}
