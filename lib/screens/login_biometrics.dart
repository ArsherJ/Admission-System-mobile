import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:admissionproject/api/local_auth_api.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/designs/pallete.dart';
import 'package:admissionproject/screens/main_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:admissionproject/widgets/appli_bottomnav.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Uri _phoneNumber = Uri.parse('+639987654321');
  final userController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
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
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: TextField(
                          controller: userController,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Icon(
                                FontAwesomeIcons.userLarge,
                                size: 28,
                                color: kWhite,
                              ),
                            ),
                            hintText: 'User ID',
                            hintStyle: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(158, 0, 0, 0),
                                height: 1.5),
                          ),
                          style: kBodyText,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                      height: size.height * 0.08,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Icon(
                                FontAwesomeIcons.lock,
                                size: 28,
                                color: kWhite,
                              ),
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(158, 0, 0, 0),
                                height: 1.5),
                          ),
                          obscureText: true,
                          style: kBodyText,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // const RoundedButton(
                  //   buttonName: 'Sign In',
                  // ),
                  Container(
                    height: size.height * 0.08,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFEF3A25),
                    ),
                    child: TextButton(
                      onPressed: () async {
                        final SharedPreferences prefs = await SharedPreferences.getInstance();
                        prefs.setString('userid', userController.text);
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const AppliButtonNav()));
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 22,
                            color: Color.fromARGB(255, 250, 250, 250),
                            height: 1.5),
                      ),
                    ),
                  ),
                  buildAuthenticate(context),
                  const SizedBox(
                    height: 10,
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
                        color: Colors.blue, height: 1.5),
                  ),
                ]),
              ),
              const SizedBox(height: 15),
              const Text(
                    "For Inquiries:",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(199, 0, 0, 0),
                        height: 1.5),
                  ),
                  const SizedBox(height: 10),
                 Row(mainAxisAlignment: MainAxisAlignment.center, children:[
                  IconButton(
                    icon: const Icon(Icons.phone),
                    color: Colors.red,
                    onPressed:()async{
                      final Uri _call = Uri.parse('tel:$_phoneNumber'); 
                      if (await canLaunchUrl(_call)){
                        await launchUrl(_call);
                      }
                    },
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  IconButton(
                    icon: const Icon(Icons.sms),
                    color: Colors.red,
                    onPressed:()async{
                      final Uri _text = Uri.parse('sms:$_phoneNumber'); 
                      if (await canLaunchUrl(_text)){
                        await launchUrl(_text);
                      }
                    },
                  ),
                 ]
                 ),
                 const SizedBox(height: 20)
            ],
        ),
    ),
      ]
    );
  }

  Widget buildAuthenticate(BuildContext context) => buildButton(
        text: '',
        icon: Icons.fingerprint_rounded,
        onClicked: () async {
          final isAuthenticated = await LocalAuthApi.authenticate();

          if (isAuthenticated) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          }
        },
      );

  Widget buildButton({
    required String text,
    required IconData icon,
    required VoidCallback onClicked,
  }) =>
      TextButton.icon(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 15),
          primary: const Color.fromARGB(199, 0, 0, 0),
          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        icon: Icon(icon, size: 40, color: const Color(0xFFEF3A25),),
        label: Text(
          text,
          style: const TextStyle(fontSize: 20),
        ),
        onPressed: onClicked,
      );
}

