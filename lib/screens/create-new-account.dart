import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/designs/pallete.dart';
import '../widgets/widgets.dart';

class CreateNewAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          backgroundColor: const Color.fromARGB(255, 226, 225, 225),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.width * 0.1,
                ),
                Stack(
                  children: [
                    Center(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text("USER REGISTRATION",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 31, 31, 31),
                              height: 1.5,
                              letterSpacing: 4,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    )),
                    Positioned(
                      top: size.height * 0.08,
                      left: size.width * 0.56,
                      child: Container(
                        height: size.width * 0.1,
                        width: size.width * 0.1,
                        decoration: BoxDecoration(
                          color: kBlue,
                          shape: BoxShape.circle,
                          border: Border.all(color: kWhite, width: 2),
                        ),
                        child: const Icon(
                          FontAwesomeIcons.arrowUp,
                          color: kWhite,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: size.width * 0.1,
                ),
                Column(
                  children: [
                    const TextInputField(
                      icon: FontAwesomeIcons.userLarge,
                      hint: 'First Name',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                    const TextInputField(
                      icon: FontAwesomeIcons.userLarge,
                      hint: 'Middle Name',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                    const TextInputField(
                      icon: FontAwesomeIcons.userLarge,
                      hint: 'Last Name',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                    const TextInputField(
                      icon: FontAwesomeIcons.venusMars,
                      hint: 'Sex',
                      inputType: TextInputType.text,
                      inputAction: TextInputAction.next,
                    ),
                    const TextInputField(
                      icon: FontAwesomeIcons.solidEnvelope,
                      hint: 'Email',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    const TextInputField(
                      icon: FontAwesomeIcons.mobileScreen,
                      hint: 'Mobile Number',
                      inputType: TextInputType.phone,
                      inputAction: TextInputAction.next,
                    ),
                    const TextInputField(
                      icon: FontAwesomeIcons.calendar,
                      hint: 'Birthdate',
                      inputType: TextInputType.datetime,
                      inputAction: TextInputAction.next,
                    ),
                    const TextInputField(
                      icon: FontAwesomeIcons.locationDot,
                      hint: 'Address',
                      inputType: TextInputType.text,
                      inputAction: TextInputAction.next,
                    ),
                    const PasswordInput(
                      icon: FontAwesomeIcons.lock,
                      hint: 'Password',
                      inputAction: TextInputAction.next,
                    ),
                    const PasswordInput(
                      icon: FontAwesomeIcons.lock,
                      hint: 'Confirm Password',
                      inputAction: TextInputAction.done,
                    ),
                    const TextInputField(
                      icon: FontAwesomeIcons.userGear,
                      hint: 'Preferred Course',
                      inputType: TextInputType.text,
                      inputAction: TextInputAction.next,
                    ),
                    const TextInputField(
                      icon: FontAwesomeIcons.leanpub,
                      hint: 'SHS Strand',
                      inputType: TextInputType.text,
                      inputAction: TextInputAction.next,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const RoundedButton(buttonName: 'Create Account'),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account?',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(183, 0, 0, 0),
                                height: 1.5)),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Text(
                            'Sign In',
                            style: kBodyText.copyWith(
                                color: kBlue, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
