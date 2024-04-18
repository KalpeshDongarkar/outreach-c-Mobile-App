import 'package:flutter/material.dart';
import 'package:outreachapp/widgets/athinput.dart';
import 'package:outreachapp/widgets/athbutton.dart';
import 'package:outreachapp/Screens/auth/register.dart';

// ignore_for_file: prefer_const_constructors

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usrNmCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  // ignore: non_constant_identifier_names
  void SignINuser() {
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => const Dashboard()));
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: screenheight * 0.05),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Hey,\nWelcome!',
                            style: TextStyle(
                                color: Color.fromARGB(255, 63, 64, 173),
                                fontSize: 25,
                                fontWeight: FontWeight.w400,
                                height: 1,
                                letterSpacing: 0.3),
                          )
                        ],
                      )),
                  SizedBox(height: screenheight * 0.01),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'To proceed, please enter your name & \npassword.',
                          style: TextStyle(
                              color: Color.fromARGB(255, 134, 134, 134),
                              fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: screenheight * 0.04),
                  AthInput(
                    txtFldCtrl: usrNmCtrl,
                    plHld: "Email",
                    txtType: false,
                  ),
                  SizedBox(height: screenheight * 0.02),
                  AthInput(
                    txtFldCtrl: passCtrl,
                    plHld: "Password",
                    txtType: true,
                  ),
                  SizedBox(height: screenheight * 0.01),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Reset Password',
                          style: TextStyle(
                              color: Color.fromARGB(255, 63, 64, 173),
                              fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: screenheight * 0.526),
                  AthButton(onClickEvent: SignINuser),
                  SizedBox(height: screenheight * 0.01),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account? ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 134, 134, 134),
                              fontSize: 14),
                        ),
                        GestureDetector(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Color.fromARGB(255, 63, 64, 173),
                                fontSize: 14),
                          ),
                          onTap: () => {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()))
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
