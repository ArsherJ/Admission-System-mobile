import 'package:flutter/material.dart';

class NurseMessage extends StatelessWidget {
  const NurseMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message'),
        centerTitle: true,
        backgroundColor:const Color(0xFFEF3A25),
      ),
    );
  }
}
