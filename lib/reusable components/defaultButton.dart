// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  const DefaultButton({
    required this.onPressed,
    required this.text,
    super.key,
    this.isLoading = false,
  });
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
        child: isLoading
            ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              )
            : Text(
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
