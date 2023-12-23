import 'package:admissionproject/screens/main_screen.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.buttonName,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFFEF3A25),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
        },
        child: Text(
          buttonName,
          style: const TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 250, 250, 250),
              height: 1.5),
        ),
      ),
    );
  }
}
