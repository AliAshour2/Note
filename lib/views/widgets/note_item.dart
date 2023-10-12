
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24 ,bottom: 24 , left: 16),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 232, 101, 255),
          borderRadius: BorderRadius.circular(16)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        ListTile(
          title: Text(
            "Flutter Note",
            style: TextStyle( fontSize: 26, color: Colors.black),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 16 , bottom: 16),
            child: Text(
              "Hello mother father how are you gine",
              style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(0.5)),
            ),
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(
               FontAwesomeIcons.trash,
                color: Colors.black,
                size: 22,
              )),
        ),
        Padding(padding: EdgeInsets.only(right: 24) , child: Text(
          "May 21 2002",
          style: TextStyle( color: Colors.black.withOpacity(0.4)),
        ),)
      ]),
    );
  }
}
