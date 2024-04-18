import 'package:flutter/material.dart';
import 'package:outreachapp/widgets/athinput.dart';
import 'package:outreachapp/widgets/athbutton.dart';
import 'package:outreachapp/Screens/auth/registerphase2.dart';
// ignore_for_file: prefer_const_constructors

// ignore_for_file: prefer_const_literals_to_create_immutables

// ignore_for_file: use_super_parameters

class Registerphase1 extends StatefulWidget {
  const Registerphase1({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Registerphase1State createState() => _Registerphase1State();
}

class _Registerphase1State extends State<Registerphase1> {
  final nmCtrl = TextEditingController();
  final usrnmCtrl = TextEditingController();

  // ignore: non_constant_identifier_names
  void RegPhase2() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Registerphase2()));
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
                      Flexible(
                          child: Text(
                        'Tell us name & Create \nUsername',
                        style: TextStyle(
                            color: Color.fromARGB(255, 63, 64, 173),
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            height: 1,
                            letterSpacing: 0.3),
                      )),
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
                      'We\'re thrilled to have you onboard.',
                      style: TextStyle(
                          color: Color.fromARGB(255, 134, 134, 134),
                          fontSize: 14),
                    ))
                  ],
                ),
              ),
              const SizedBox(height: 30),
              AthInput(
                txtFldCtrl: nmCtrl,
                plHld: "Name",
                txtType: false,
              ),
              const SizedBox(height: 20),
              AthInput(
                txtFldCtrl: usrnmCtrl,
                plHld: "Create username",
                txtType: true,
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                        child: Text(
                      '*User name must be 6-20 characters long, no uppercase, number, and underscores.',
                      style: TextStyle(
                          color: Color.fromARGB(255, 134, 134, 134),
                          fontSize: 14),
                    ))
                  ],
                ),
              ),
              const SizedBox(height: 285),
              AthButton(onClickEvent: RegPhase2),
            ],
          ),
        ),
      )),
    );
  }
}
