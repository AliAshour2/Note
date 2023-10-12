import 'package:flutter/material.dart';
import 'package:note/views/notes_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note',
      theme: ThemeData(brightness: Brightness.dark , fontFamily: 'poppins'),
      home: NotesView(),
    );
  }
}
