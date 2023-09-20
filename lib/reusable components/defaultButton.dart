// ignore_for_file: file_names, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class defaultButton extends StatelessWidget {
  String text;
  VoidCallback? onPressed;
  defaultButton({required this.onPressed, required this.text, super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(kprimaryColor),
          minimumSize:
              MaterialStateProperty.all<Size>(const Size(double.infinity, 45)),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// Widget defaultButton({
//   double width = double.infinity,
//   Color background = Colors.white,
//   required Function function,
//   required String text,
//   double height = 40,
//   bool isUpperCase = true,
// }) =>
//     Container(
//       margin: const EdgeInsets.all(8),
//       height: height,
//       color: background,
//       width: width,
//       child: ElevatedButton(
//         onPressed: () {
//           function();
//         },
//         child: Text(
//           isUpperCase ? text.toUpperCase() : text,
//           style: const TextStyle(
//             fontSize: 20,
//             color: Colors.black,
//           ),
//         ),
//       ),
//     );
