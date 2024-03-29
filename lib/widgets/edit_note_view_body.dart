import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';

import '../reusable components/custom_text_form_field.dart';
import 'custom_appbar.dart';
import 'edit_note_colors_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  TextEditingController textField1Controller = TextEditingController();
  TextEditingController textField2Controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    textField1Controller.text = widget.note.title;
    textField2Controller.text = widget.note.subTitle;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomAppbar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(height: 32),
          CustomTextField(
            controller: textField1Controller,
            onChanged: (p0) {
              title = p0;
            },
            labelText: 'title',
          ),
          const SizedBox(height: 16),
          CustomTextField(
            controller: textField2Controller,
            onChanged: (p0) {
              content = p0;
            },
            labelText: 'content',
            maxLins: 5,
          ),
          EditNoteColorsListView(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
