import 'package:admissionproject/screens/side_menu.dart';
import 'package:admissionproject/widgets/admin_bottomnav.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Expanded(
              flex: 5,
              child: AdminBottomnav(),
            ),
          ],
        ),
      ),
    );
  }
}
