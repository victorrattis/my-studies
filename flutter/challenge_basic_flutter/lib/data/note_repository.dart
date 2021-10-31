import 'package:challenge_basic_flutter/utils/generator.dart';

class NoteRepository {
  List<Note>? _cache;  

  NoteRepository() {
    print("noteRepository constructor");
  }

  List<Note> getNotes() {
    print("getNotes");
    _cache ??= generateNoteList();
    return _cache!;
  }

  List<Note> generateNoteList() {
    print("generate note list");
    return List<Note>.generate(
    10000, 
    (i) => Note(
      id: i, 
      title: Generator.generateRandomString(25),
      isChecked: Generator.generateRandomEnabledState()
      )
    );
  }
}

class Note {
  final int id;
  final String? title;
  bool isChecked;
  
  Note({ required this.id, this.title, this.isChecked = false });
}
