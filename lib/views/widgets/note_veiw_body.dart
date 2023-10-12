import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_appbar.dart';

class NotesVeiwBody extends StatelessWidget {
  const NotesVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        
        children: [
            SizedBox(height: 50,),
            CustomAppBar(),
        ],
      ),
    );
  }
}