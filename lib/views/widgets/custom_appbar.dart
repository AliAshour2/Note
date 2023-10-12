import 'package:flutter/material.dart';
import 'package:note/views/widgets/customSearchIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(
            fontSize: 26,
          ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
