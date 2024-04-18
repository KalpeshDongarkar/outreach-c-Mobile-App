import 'package:flutter/material.dart';
// ignore_for_file: prefer_typing_uninitialized_variables

// ignore_for_file: prefer_const_constructors

class AthInput extends StatelessWidget {
  final txtFldCtrl;
  final plHld;
  final bool txtType;
  const AthInput(
      {super.key,
      required this.txtFldCtrl,
      required this.plHld,
      required this.txtType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: txtFldCtrl,
        obscureText: txtType,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 63, 64, 173), width: 1)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide:
                BorderSide(color: Color.fromARGB(255, 63, 64, 173), width: 1),
          ),
          contentPadding: EdgeInsets.all(12),
          fillColor: Color.fromARGB(255, 255, 255, 255),
          filled: true,
          hintText: plHld,
          hintStyle: TextStyle(
              color: Color.fromARGB(255, 134, 134, 134),
              // fontFamily: 'Poppins-Regular',
              fontSize: 14),
        ),
      ),
    );
  }
}
