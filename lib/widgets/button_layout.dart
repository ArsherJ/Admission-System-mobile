import 'package:admissionproject/screens/main_screen.dart';
import 'package:flutter/material.dart';
import '../models/designs/pallete.dart';

class ButtonLayout extends StatelessWidget {
  const ButtonLayout({
    Key? key,
    required this.buttonName,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.06,
      width: size.width * 0.25,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: TextButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                    side: const BorderSide(color: Colors.black))),
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered)) {
                  return const Color(0xFFEF3A25);
                }
                return null;
              },
            ),
            foregroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered)) return Colors.white;
                return Colors.green;
              },
            )),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
        },
        child: Text(
          buttonName,
          style:
              const TextStyle(fontSize: 16, color: Colors.black, height: 1.5),
        ),
      ),
    );
  }
}
