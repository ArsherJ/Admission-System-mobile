import 'package:flutter/material.dart';

class InterMessage extends StatelessWidget {
  const InterMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message'),
        centerTitle: true,
        backgroundColor: const Color(0xFFEF3A25),
      ),
    );
  }
}
