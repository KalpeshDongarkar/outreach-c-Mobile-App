import 'package:flutter/material.dart';
import 'package:outreachapp/widgets/athbutton.dart';
import 'package:outreachapp/Screens/auth/registerphase4.dart';
// ignore_for_file: prefer_const_constructors

// ignore_for_file: library_private_types_in_public_api

// ignore_for_file: use_super_parameters

class Registerphase3 extends StatefulWidget {
  const Registerphase3({Key? key}) : super(key: key);

  @override
  _Registerphase3State createState() => _Registerphase3State();
}

class _Registerphase3State extends State<Registerphase3> {
  // ignore: non_constant_identifier_names
  void RegPhase4() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Registerphase4()));
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
                        'Share you bio with us',
                        style: TextStyle(
                            color: Color.fromARGB(255, 63, 64, 173),
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            height: 1,
                            letterSpacing: 0.3),
                      )),
                      GestureDetector(
                        onTap: RegPhase4,
                        child: Text(
                          'Skip',
                          style: TextStyle(
                              color: Color.fromARGB(255, 134, 134, 134),
                              fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                          child: Text(
                        'Write about you...',
                        style: TextStyle(
                            color: Color.fromARGB(255, 134, 134, 134),
                            fontSize: 14),
                      ))
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    minLines: 5,
                    maxLines: 7,
                    keyboardType: TextInputType.multiline,
                    style: TextStyle(color: Color.fromARGB(255, 134, 134, 134)),
                    decoration: InputDecoration(
                        hintText: 'Write your Bio',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 134, 134, 134),
                            fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color.fromARGB(121, 181, 181, 181),
                                width: 1)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                              color: Color.fromARGB(121, 181, 181, 181),
                              width: 1),
                        )),
                  ),
                ),
                const SizedBox(height: 325),
                AthButton(onClickEvent: RegPhase4),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
