import 'package:admissionproject/main.dart';
import 'package:admissionproject/screens/dashboard/components/OverallDetails.dart';
import 'package:admissionproject/screens/dashboard/components/my_fields.dart';
import 'package:admissionproject/screens/login_biometrics.dart';
import 'package:flutter/material.dart';
import 'package:admissionproject/models/designs/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Admin Dashboard',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.clear();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext ctx) => LoginScreen()));
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 195, 29, 57),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(
            defaultPadding, 2, defaultPadding, defaultPadding),
        child: Column(
          children: [
            const SizedBox(height: 12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: const [
                      MyFiles(),
                      StorageDetails(),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
