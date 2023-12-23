import 'package:admissionproject/main.dart';
import 'package:admissionproject/screens/dashboard/components/requirements_layout.dart';
import 'package:admissionproject/screens/login-screen.dart';
import 'package:flutter/material.dart';

import 'package:admissionproject/models/designs/constants.dart';

void main() {
  runApp(MyApp());
}

class AdminAppliReqs extends StatefulWidget {
  const AdminAppliReqs({Key? key}) : super(key: key);

  @override
  State<AdminAppliReqs> createState() => _AdminAppliReqsState();
}

class _AdminAppliReqsState extends State<AdminAppliReqs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Admin Dashboard',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            icon: Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 195, 29, 57),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(
            defaultPadding, 5, defaultPadding, defaultPadding),
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
                      ApplicantRequirements(),
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
