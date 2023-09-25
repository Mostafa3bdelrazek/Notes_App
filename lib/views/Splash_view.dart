// ignore_for_file: file_names

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:notes/views/notes_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splashIconSize: 200,
        backgroundColor: Colors.black,
        duration: 2500,
        splash: const Image(
          image: AssetImage('assets/images/logo.png'),
        ),
        nextScreen: const NotesView(),
      ),
    );
  }
}
