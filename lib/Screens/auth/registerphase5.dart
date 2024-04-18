import 'package:flutter/material.dart';
import 'package:outreachapp/widgets/athbutton.dart';
import 'package:outreachapp/Screens/auth/register.dart';
// ignore_for_file: prefer_const_constructors

// ignore_for_file: prefer_const_literals_to_create_immutables

class Registerphase5 extends StatefulWidget {
  const Registerphase5({Key? key}) : super(key: key);

  @override
  _Registerphase5State createState() => _Registerphase5State();
}

class _Registerphase5State extends State<Registerphase5> {
  void DashboardMain() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Register()));
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
                SizedBox(height: 195),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          '🎉Congratulation! You \nonboarded successfully',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 63, 64, 173),
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                              height: 1.0,
                              letterSpacing: 1.2),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          'We are thrilled to extend a warm welcome to \nall newcomers and returning members alike.\nWhether you\'re joining us for the first time or continuing your journey with us, we\'re \nexcited to have you here.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 134, 134, 134),
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 200),
                AthButton(onClickEvent: DashboardMain),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
