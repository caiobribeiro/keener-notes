class NoteModel {
  final String title;
  final String body;
  final String? id;
  NoteModel({
    required this.title,
    required this.body,
    this.id,
  });
}
