import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admissionproject/models/designs/constants.dart';
import 'package:admissionproject/screens/create-new-account.dart';
import 'package:admissionproject/screens/forgot-password.dart';
import 'package:admissionproject/screens/login_biometrics.dart';
import 'package:admissionproject/screens/welcome_back.dart';
import 'package:admissionproject/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var userid = prefs.getString('userid');
  print(userid);
  runApp(MaterialApp(home: userid == null ? LoginScreen() : WelcomeScreen(),                
                    debugShowCheckedModeBanner: false,
                    title: 'Admission App',));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData.light().copyWith(
        scaffoldBackgroundColor: creamColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        canvasColor: snowColor,
      ),
      dark: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        title: 'Adaptive Theme',
        theme: theme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => LoginScreen(),
          'MainWindow': (context) => MainScreen(),
          'ForgotPassword': (context) => ForgotPassword(),
          'CreateNewAccount': (context) => CreateNewAccount(),
        },
      ),
    );
  }
}
