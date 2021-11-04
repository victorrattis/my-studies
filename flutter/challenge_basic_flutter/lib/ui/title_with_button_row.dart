import 'package:flutter/material.dart';

class TitleWithButtonRow extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final Function() onClicked;

  const TitleWithButtonRow({
    Key? key,
    required this.title,
    required this.buttonTitle,
    required this.onClicked
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.blueGrey,
            padding: const EdgeInsets.symmetric(vertical:6, horizontal: 12),
            child: Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Expanded(child: Align(
                    alignment:Alignment.centerRight,
                    child: ElevatedButton(
                      child: Text(buttonTitle),
                      onPressed: () => {
                        onClicked()
                      }
                    ),
                  )
                )
              ],
            ),
          )
        )
      ],
    );
  }
}
