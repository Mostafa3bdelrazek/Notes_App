import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_appbar.dart';
import 'package:notes/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 10),
          CustomAppbar(),
          Expanded(
            child: NotesListView(),
          )
        ],
      ),
    );
  }
}
