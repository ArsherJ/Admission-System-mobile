import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:admissionproject/screens/login_biometrics.dart';
import 'package:admissionproject/users/applicant/appli_home.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  String welcomeName = '';

  @override
  // ignore: must_call_super
  void initState() {
    getData();
  }
  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      welcomeName = prefs.getString('userid')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: const Color.fromARGB(255, 226, 226, 226),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage('assets/images/logo.png'),
                  backgroundColor: Color.fromARGB(255, 226, 225, 225),
                ),
              ),
              const Text(
                  'Welcome back!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
                display(),
                  Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          primary: const Color(0xffEF3A25),
                          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0)
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext ctx) => const AppliHome()));
                        }, 
                        child: const Text('Continue', style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white70,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            onPrimary: const Color(0xffEF3A25),
                            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0)
                          ),
                          onPressed: () async {
                            SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.clear();
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (BuildContext ctx) => LoginScreen()));
                          }, 
                          child: const Text('Log Out', style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                    ],
                  ),
                ),
            ],
        ),
    ),
      ]
    );
  }
  display(){
    // ignore: unnecessary_null_comparison
    if (welcomeName != null) {
      return Text(
            welcomeName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Lato',
              letterSpacing: 2.0,
            ),
          );
    } else {
      return const Text(
            '',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Lato',
              letterSpacing: 2.0,
            ),
          );
    }
  }
}

