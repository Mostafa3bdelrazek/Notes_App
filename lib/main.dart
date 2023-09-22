import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constants.dart';
import 'package:notes/simple_bloc_observer.dart';
import 'package:notes/views/notes_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'models/note_model.dart';

Future<void> main() async {
  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const Notes());
}

class Notes extends StatelessWidget {
  const Notes({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
