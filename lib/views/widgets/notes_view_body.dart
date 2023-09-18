import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_appbar.dart';
import 'package:notes/views/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          CustomAppbar(),
          NotesItem(),
        ],
      ),
    );
  }
}
