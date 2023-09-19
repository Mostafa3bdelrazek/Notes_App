import 'package:flutter/material.dart';

import '../reusable components/custom_text_form_field.dart';
import '../reusable components/defaultButton.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            CustomTextField(
              labelText: 'title',
            ),
            const SizedBox(height: 16),
            CustomTextField(
              labelText: 'content',
              maxLins: 5,
            ),
            const SizedBox(height: 32),
            defaultButton(
              onPressed: () {},
              text: 'Add',
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
