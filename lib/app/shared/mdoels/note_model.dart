import 'package:cloud_firestore/cloud_firestore.dart';

class NoteModel {
  final String title;
  final String body;
  final String? id;
  NoteModel({
    required this.title,
    required this.body,
    this.id,
  });
  factory NoteModel.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return NoteModel(
      id: doc.id,
      title: data['title'] ?? '',
      body: data['body'] ?? '',
    );
  }

  factory NoteModel.fromJson(Map<String, dynamic> map) {
    return NoteModel(
      title: map['title'] ?? '',
      body: map['body'] ?? '',
      id: map['id'],
    );
  }

  @override
  String toString() => 'NoteModel(title: $title, body: $body, id: $id)';
}
