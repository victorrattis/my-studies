import 'package:flutter/material.dart';
import 'package:challenge_basic_flutter/ui/body_app.dart';
import 'package:challenge_basic_flutter/assets/constants.dart' as constants;

void main() {
  runApp(const MyApp());
}

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
      body: BodyApp(),
    ),
  );
}