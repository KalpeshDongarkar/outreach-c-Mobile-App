import 'package:flutter/material.dart';
import 'package:outreachapp/widgets/athinput.dart';
import 'package:outreachapp/widgets/athbutton.dart';
import 'package:outreachapp/Screens/auth/login.dart';
import 'package:outreachapp/Screens/auth/registerphase1.dart';

// ignore_for_file: prefer_const_constructors

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final usrNmCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final passConfCtrl = TextEditingController();

  // ignore: non_constant_identifier_names
  void SignUPuser() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Registerphase1()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Hey,\nWelcome',
                          style: TextStyle(
                              color: Color.fromARGB(255, 63, 64, 173),
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                              height: 1,
                              letterSpacing: 0.3),
                        )
                      ],
                    )),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                          child: Text(
                        'To proceed, please enter your name, \npassword and confirm it.',
                        style: TextStyle(
                            color: Color.fromARGB(255, 134, 134, 134),
                            fontSize: 14),
                      ))
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                AthInput(
                  txtFldCtrl: usrNmCtrl,
                  plHld: "Email",
                  txtType: false,
                ),
                const SizedBox(height: 20),
                AthInput(
                  txtFldCtrl: passCtrl,
                  plHld: "Password",
                  txtType: true,
                ),
                const SizedBox(height: 20),
                AthInput(
                  txtFldCtrl: passConfCtrl,
                  plHld: "Confirm Password",
                  txtType: true,
                ),
                const SizedBox(height: 228),
                AthButton(onClickEvent: SignUPuser),
                const SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have an account? ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 134, 134, 134),
                            fontSize: 14),
                      ),
                      GestureDetector(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: Color.fromARGB(255, 63, 64, 173),
                              fontSize: 14),
                        ),
                        onTap: () => {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Login()))
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
