import 'package:flutter/material.dart';
import 'package:notes/widgets/notes_list_view.dart';

import '../reusable components/custom_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 10),
          CustomAppbar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
            child: NotesListView(),
          )
        ],
      ),
    );
  }
}