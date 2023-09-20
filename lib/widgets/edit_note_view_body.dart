import 'package:flutter/material.dart';
import 'package:notes/reusable%20components/custom_appbar.dart';

import '../reusable components/custom_text_form_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(height: 10),
          CustomAppbar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(height: 32),
          CustomTextField(
            labelText: 'title',
          ),
          SizedBox(height: 16),
          CustomTextField(
            labelText: 'content',
            maxLins: 5,
          ),
        ],
      ),
    );
  }
}
