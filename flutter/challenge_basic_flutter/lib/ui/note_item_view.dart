import 'package:flutter/material.dart';
import 'package:challenge_basic_flutter/data/note_repository.dart';

class NoteItemView extends StatefulWidget {
  final Note? note;

  const NoteItemView({Key? key, required this.note}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NoteItemView();
}

class _NoteItemView extends State<NoteItemView> {
 bool isDartTheme() => widget.note?.isChecked ?? false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        color: _getBackgroundColor(isDartTheme()),
        child: Row(children: [
          Text(
            widget.note?.title ?? "",
            style: TextStyle(
              color: _getTextColor(isDartTheme())
            )
          ),
          Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(_getColor),
            value: widget.note?.isChecked,
            onChanged: (bool? value) {
              setState(() {
                widget.note?.isChecked = value ?? false;
              });
            },
          ),
        ],),
      ),
    );
  }
}

Color _getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  return states.any(interactiveStates.contains) ? Colors.blue : Colors.red;
}

Color _getBackgroundColor(isDartTheme) => isDartTheme ? Colors.black38 : Colors.white;

Color _getTextColor(isDartTheme) => isDartTheme ? Colors.white : Colors.black;
