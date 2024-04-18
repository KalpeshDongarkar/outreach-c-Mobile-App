import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:outreachapp/widgets/athbutton.dart';
import 'package:outreachapp/Screens/auth/registerphase5.dart';
// ignore_for_file: prefer_interpolation_to_compose_strings

// ignore_for_file: prefer_const_constructors

// ignore_for_file: library_private_types_in_public_api

// ignore_for_file: use_super_parameters

class Registerphase4 extends StatefulWidget {
  const Registerphase4({Key? key}) : super(key: key);

  @override
  _Registerphase4State createState() => _Registerphase4State();
}

class _Registerphase4State extends State<Registerphase4> {
  // ignore: non_constant_identifier_names
  void RegPhase5() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Registerphase5()));
  }

  void CapSugt() {}

  @override
  Widget build(BuildContext context) {
    List<String> suggestionlist = [
      'Nutrition & Dietetics',
      'Lifestyle',
      'Mental Health',
      'Physical Health',
      'Fitness & Exercise',
      'well-being',
      'Healthy Aging'
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          child: Text(
                        'Tell us what you\'re \ninterested in',
                        style: TextStyle(
                            color: Color.fromARGB(255, 63, 64, 173),
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            height: 1,
                            letterSpacing: 0.3),
                      )),
                      GestureDetector(
                        child: Text(
                          'Skip',
                          style: TextStyle(
                              color: Color.fromARGB(255, 134, 134, 134),
                              fontSize: 14),
                        ),
                        onTap: () => {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Registerphase5()))
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Wrap(
                  spacing: 0.2,
                  runSpacing: 0.4,
                  children: <Widget>[
                    for (int i = 0; i < suggestionlist.length; i++)
                      MulOptnBtn(
                          valuename: suggestionlist[i], onClickEvent: CapSugt),
                  ],
                ),
                SizedBox(height: 265),
                AthButton(onClickEvent: RegPhase5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
