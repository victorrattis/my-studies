import 'package:challenge_basic_flutter/data/note_repository.dart';
import 'package:challenge_basic_flutter/ui/note_list_view.dart';
import 'package:flutter/material.dart';

import 'base_board.dart';
import 'title_with_button_row.dart';

class BodyApp extends StatefulWidget {
  late final NoteRepository noteRepository = NoteRepository();

  BodyApp({Key? key}) : super(key: key);

  @override
  _BodyAppState createState() => _BodyAppState();
}

class _BodyAppState extends State<BodyApp> {
  late List<Note> notes ;

  @override
  void initState() {
    notes = getDefaultNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWithButtonRow(
          title: "Resetando os Dados:",
          buttonTitle: "Reset All".toUpperCase(),
          onClicked: () {
            setState(() {
              notes = getDefaultNotes();
            });
          }
        ),
        
        NoteListView(notes: notes),

        const BaseBoard(),
      ],
    );
  }

  List<Note> getDefaultNotes() => widget.noteRepository.getNotes().map((e) =>
      Note(id: e.id, title: e.title, isChecked: e.isChecked)
    ).toList();
}
