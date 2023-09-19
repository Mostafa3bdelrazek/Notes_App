import 'package:flutter/material.dart';
import 'package:notes/reusable%20components/custom_appbar.dart';

import '../reusable components/custom_text_form_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(height: 10),
          const CustomAppbar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(height: 32),
          CustomTextField(
            labelText: 'title',
          ),
          const SizedBox(height: 16),
          CustomTextField(
            labelText: 'content',
            maxLins: 5,
          ),
        ],
      ),
    );
  }
}
