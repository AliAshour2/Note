import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note/views/widgets/custom_appbar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child:const Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            icon: FontAwesomeIcons.check,
            title: "Edit Note",
          )
        ],
      ),
    );
  }
}
