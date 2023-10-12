import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_appbar.dart';
import 'package:note/views/widgets/note_veiw_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){} , backgroundColor: const Color.fromARGB(255, 228, 228, 228), child: Icon(Icons.add),),
      body: NotesVeiwBody(),
    );
  }
}
