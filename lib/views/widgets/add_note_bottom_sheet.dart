import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_text_form_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
            labelText: 'title',
          ),
          const SizedBox(height: 16),
          CustomTextField(
            labelText: 'content',
          ),
        ],
      ),
    );
  }
}
