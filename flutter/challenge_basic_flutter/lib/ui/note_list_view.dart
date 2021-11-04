import 'package:challenge_basic_flutter/data/note_repository.dart';
import 'package:flutter/material.dart';
import 'note_item_view.dart';

class NoteListView extends StatelessWidget {
  final List<Note> notes;

  const NoteListView({Key? key, required this.notes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return NoteItemView(note: notes[index]);
        },
      ),
    );
  }
}
