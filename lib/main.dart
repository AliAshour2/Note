import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note/constants.dart';
import 'package:note/views/notes_views.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note',
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'poppins'),
      home: NotesView(),
    );
  }
}
