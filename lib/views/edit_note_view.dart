import 'package:flutter/material.dart';

import '../widgets/edit_note_view_body.dart';



class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: EditNoteViewBody()),
    );
  }
}
