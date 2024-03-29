import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final bool obscureText;
  final int? maxLins;
  final Icon? suffixIcon;
  final Icon? prefixIcon;
  const CustomTextField({
    super.key,
    this.onChanged,
    this.labelText,
    this.obscureText = false,
    this.maxLins = 1,
    this.onSaved,
    this.hintText,
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (data) {
        if (data?.isEmpty ?? true) {
          return 'field is required';
        }
        return null;
      },
      maxLines: maxLins,
      obscureText: obscureText,
      onChanged: onChanged,
      onSaved: onSaved,
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        labelText: labelText,
        labelStyle: const TextStyle(color: kprimaryColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: kprimaryColor,
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