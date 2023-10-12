import 'package:flutter/material.dart';
import 'package:note/views/widgets/bottomsheet.dart';
import 'package:note/views/widgets/custom_appbar.dart';
import 'package:note/views/widgets/note_veiw_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            });
      } , backgroundColor: Colors.white,child: Icon(Icons.add , color: Colors.black,),),
      body: NotesVeiwBody(),
    );
  }
}

