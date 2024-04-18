import 'package:flutter/material.dart';
import 'package:outreachapp/widgets/athbutton.dart';
import 'package:outreachapp/Screens/auth/registerphase3.dart';
// ignore_for_file: prefer_const_constructors

// ignore_for_file: prefer_const_literals_to_create_immutables

// ignore_for_file: library_private_types_in_public_api

// ignore_for_file: non_constant_identifier_names

class Registerphase2 extends StatefulWidget {
  // ignore: use_super_parameters
  const Registerphase2({Key? key}) : super(key: key);

  void RegPhase3() {}

  @override
  _Registerphase2State createState() => _Registerphase2State();
}

class _Registerphase2State extends State<Registerphase2> {
  void RegPhase3() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Registerphase3()));
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
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                            child: Text(
                          'Great Let\'s add your \nprofile picture',
                          style: TextStyle(
                              color: Color.fromARGB(255, 63, 64, 173),
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                              height: 1,
                              letterSpacing: 0.3),
                        )),
                        GestureDetector(
                          onTap: RegPhase3,
                          child: Text(
                            'Skip',
                            style: TextStyle(
                                color: Color.fromARGB(255, 134, 134, 134),
                                fontSize: 14),
                          ),
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
                        'Choose a photo for your profile picture',
                        style: TextStyle(
                            color: Color.fromARGB(255, 134, 134, 134),
                            fontSize: 14),
                      ))
                    ],
                  ),
                ),
                const SizedBox(height: 482),
                AthButton(onClickEvent: RegPhase3),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
