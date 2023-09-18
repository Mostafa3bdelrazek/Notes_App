import 'package:flutter/material.dart';

import '../../constants.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  String? labelText;
  Function(String)? onChanged;
  bool obscureText;
  int? maxLins;
  CustomTextField({
    super.key,
    this.onChanged,
    this.labelText,
    this.obscureText = false,
    this.maxLins = 1,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
        return null;
      },
      maxLines: maxLins,
      obscureText: obscureText,
      onChanged: onChanged,
      cursorColor: primaryColor,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: primaryColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: primaryColor,
          ),
        ),
      ),
    );
  }
}



//=================================
// TextFormField(
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Password must be not empty';
//                     }
//                     return null;
//                   },
//                   controller: passwordController,
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     prefixIcon: const Icon(
//                       Icons.lock,
//                     ),
//                     suffixIcon: IconButton(
//                       onPressed: () {
//                         setState(() {
//                           view = !view;
//                           if (view == true) {
//                             icon = Icons.remove_red_eye;
//                           } else {
//                             icon = Icons.visibility_off;
//                           }
//                         });
//                       },
//                       icon: Icon(
//                         icon,
//                       ),
//                     ),
//                     enabledBorder: const OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   keyboardType: TextInputType.visiblePassword,
//                   obscureText: view,
//                 ),