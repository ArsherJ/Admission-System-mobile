import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: const Color.fromARGB(255, 226, 226, 226),
          body: Column(
            children: [
              const Flexible(
                child: Center(
                  child: CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage('assets/images/logo.png'),
                    backgroundColor: Color.fromARGB(255, 226, 225, 225),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                    TextInputField(
                    icon: FontAwesomeIcons.userLarge,
                    hint: 'User ID',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  PasswordInput(
                    icon: FontAwesomeIcons.lock,
                    hint: 'Password',
                    inputAction: TextInputAction.done,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  RoundedButton(
                    buttonName: 'Sign In',
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'CreateNewAccount'),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                  Text(
                    "Don't have an account yet?",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(199, 0, 0, 0),
                        height: 1.5),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Create New Account',
                    style: TextStyle(
                        fontSize: 15, color: Colors.blue, height: 1.5),
                  ),
                ]),
              ),
              const SizedBox(height: 50),
            ],
          ),
        )
      ],
    );
  }
}
