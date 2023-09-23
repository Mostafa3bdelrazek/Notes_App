import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/colors_list_view.dart';

import '../reusable components/custom_text_form_field.dart';
import '../reusable components/defaultButton.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            labelText: 'title',
          ),
          const SizedBox(height: 16),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            labelText: 'content',
            maxLins: 5,
          ),
          const SizedBox(height: 16),
          const ColorsListView(),
          const SizedBox(height: 16),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return DefaultButton(
                isLoading: state is AddNoteLoading ? true : false,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var now = DateTime.now();
                    final dateFormat = DateFormat('dd-MM-yyyy');
                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: dateFormat.format(now),
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: 'Add',
              );
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
