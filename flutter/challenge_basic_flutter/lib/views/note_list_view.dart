import 'package:challenge_basic_flutter/data/note_repository.dart';
import 'package:flutter/material.dart';
import 'note_item_view.dart';

class NoteListView extends StatefulWidget {
  final Stream<List<Note>> notes;

  const NoteListView({Key? key, required this.notes}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NoteListView();
}

class _NoteListView extends State<NoteListView> {
  List<Note>? items;

  @override
  void initState() {
    super.initState();

    widget.notes.listen((notes) {
      setState(() {
        items = notes;
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: items?.length,
        itemBuilder: (context, index) {
          return NoteItemView(note: items?[index]);
        },
      ),
    );
  }
}



