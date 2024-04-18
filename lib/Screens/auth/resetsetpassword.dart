import 'package:flutter/material.dart';
import 'package:outreachapp/widgets/athinput.dart';
import 'package:outreachapp/widgets/athbutton.dart';
// ignore_for_file: file_names

// ignore_for_file: non_constant_identifier_names

// ignore_for_file: library_private_types_in_public_api

// ignore_for_file: use_super_parameters

class ResetSetPassword extends StatefulWidget {
  const ResetSetPassword({Key? key}) : super(key: key);

  @override
  _ResetSetPasswordState createState() => _ResetSetPasswordState();
}

class _ResetSetPasswordState extends State<ResetSetPassword> {
  final passCtrl = TextEditingController();
  final cnpassCtrl = TextEditingController();

  void ResetPass() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: ListView(
          children: [
            const SizedBox(height: 50),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Set,\nPassword',
                      style: TextStyle(
                          color: Color.fromARGB(255, 63, 64, 173),
                          fontSize: 35,
                          fontWeight: FontWeight.w400,
                          height: 1.0,
                          letterSpacing: 1.2),
                    )
                  ],
                )),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'To proceed, please enter password and confirm it.',
                    style: TextStyle(
                        color: Color.fromARGB(255, 134, 134, 134),
                        fontSize: 16),
                  )
                ],
              ),
            ),
            const SizedBox(height: 80),
            AthInput(
              txtFldCtrl: passCtrl,
              plHld: "Password",
              txtType: false,
            ),
            const SizedBox(height: 20),
            AthInput(
              txtFldCtrl: cnpassCtrl,
              plHld: "Confirm Password",
              txtType: true,
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Reset Password',
                    style: TextStyle(
                        color: Color.fromARGB(255, 63, 64, 173),
                        fontSize: 15),
                  )
                ],
              ),
            ),
            const SizedBox(height: 200),
            AthButton(onClickEvent: ResetPass),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 134, 134, 134),
                        fontSize: 16),
                  ),
                  Text(
                    'Log In',
                    style: TextStyle(
                        color: Color.fromARGB(255, 63, 64, 173),
                        fontSize: 16),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
