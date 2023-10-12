import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note/views/widgets/custom_appbar.dart';
import 'package:note/views/widgets/note_item.dart';

class NotesVeiwBody extends StatelessWidget {
  const NotesVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          NoteItem()
        ],
      ),
    );
  }
}
