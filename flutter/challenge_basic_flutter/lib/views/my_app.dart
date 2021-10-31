import 'dart:async';
import 'package:challenge_basic_flutter/data/note_repository.dart';
import 'package:flutter/material.dart';
import 'base_board.dart';
import 'package:challenge_basic_flutter/assets/constants.dart' as constants;
import 'note_list_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: constants.appBarTitle,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold( 
      appBar: AppBar(
        title: const Text(constants.appTitle),
      ),
      body: _BodyApp(),
    ),
  );
}

class _BodyApp extends StatelessWidget {
  late final NoteRepository noteRepository = NoteRepository();
  final StreamController<List<Note>> _notesController = StreamController();

  _BodyApp({Key? key}) : super(key: key) {
    resetListData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.blueGrey,
                padding: const EdgeInsets.symmetric(vertical:6, horizontal: 12),
                child: Row(
                  children: [
                    const Text(
                      "Resetando os dados:",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Expanded(child: Align(
                        alignment:Alignment.centerRight,
                        child: ElevatedButton(
                          child: const Text("Reset All!"),
                          onPressed: () => {
                            resetListData()
                          }
                        ),
                      )
                    )
                  ],
                ),
              )
            )
          ],
        ),
        
        NoteListView(notes: _notesController.stream),

        const BaseBoard(),
      ],
    );
  }

  void resetListData() {
    List<Note> items = noteRepository.getNotes().map((e) =>
      Note(id: e.id, title: e.title, isChecked: e.isChecked)
    ).toList();
    _notesController.add(items);
  }
} 



