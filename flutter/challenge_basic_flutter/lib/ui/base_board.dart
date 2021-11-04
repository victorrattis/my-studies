import 'package:flutter/material.dart';
import 'package:challenge_basic_flutter/assets/constants.dart' as constants;

class BaseBoard extends StatelessWidget {
  const BaseBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          Expanded(
            child: Container(
              color: Colors.blueGrey,
              height: constants.baseBoardHeight,
              child: const Center(
                child: Text(
                  constants.baseBoardTitle,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            )
          )
      ],
    );
  }
}