import 'package:flutter/material.dart';

class AppliResults extends StatefulWidget {
  const AppliResults({Key? key}) : super(key: key);

  @override
  State<AppliResults> createState() => _AppliResultsState();
}

class _AppliResultsState extends State<AppliResults> {
  // ignore: non_constant_identifier_names
  final Images = [
    'assets/images/exampassers.jpg',
    'assets/images/exampassers2.jpg',
    'assets/images/exampassers3.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Application Results'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 195, 29, 57),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/exampassers.jpg'),
                        ),
            ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/exampassers2.jpg'),
                        ),
            ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/exampassers3.jpg'),
                        ),
          ],
        ),
      ),
    );
  }
}
