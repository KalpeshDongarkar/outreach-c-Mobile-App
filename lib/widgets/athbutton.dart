import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_literals_to_create_immutables

// ignore_for_file: avoid_unnecessary_containers

// ignore_for_file: prefer_const_constructors

// ignore_for_file: prefer_typing_uninitialized_variables

// ignore_for_file: must_be_immutable

class AthButton extends StatelessWidget {
  final Function() onClickEvent;

  const AthButton({super.key, required this.onClickEvent});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClickEvent,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 63, 64, 173),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: const Center(
          child: Text(
            "Continue",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }
}

class MulOptnBtn extends StatelessWidget {
  final Function() onClickEvent;
  final valuename;

  const MulOptnBtn({
    super.key,
    required this.onClickEvent,
    required this.valuename,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClickEvent,
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 211, 211, 211),
              blurRadius: 15,
              offset: Offset(2, 8), // Shadow position
            ),
          ],
          border:
              Border.all(color: Color.fromARGB(255, 155, 155, 155), width: 0.5),
        ),
        child: Text(
          valuename,
          style:
              TextStyle(color: Color.fromARGB(255, 56, 56, 56), fontSize: 14),
        ),
      ),
    );
  }
}
