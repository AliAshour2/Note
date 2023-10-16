import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note/constants.dart';
import 'package:note/cubits/add_note_cubit/cubit/add_note_cubit_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/views/notes_views.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AddNoteCubitCubit() )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Note',
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'poppins'),
        home: NotesView(),
      ),
    );
  }
}
