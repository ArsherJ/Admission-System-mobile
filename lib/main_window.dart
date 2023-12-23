import 'package:flutter/material.dart';

void main() => runApp(const MainWindow());

class MainWindow extends StatefulWidget {
  const MainWindow({ Key? key }) : super(key: key);

  @override
  State<MainWindow> createState() => _MainWindowState();
}

class _MainWindowState extends State<MainWindow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:  Colors.white,
        appBar: AppBar(
          title: Image.asset('assets/images/logo.png', height: 50, width: 50),
          centerTitle: true,
          backgroundColor: const Color(0xffEF3A25),
          elevation: 0.0,
          ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget> [
               const Text(
                  'Technological University of the Philippines - Cavite',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
                const SizedBox(height: 12.0,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/images/img_1.jpg'),
                  ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          primary: const Color(0xffEF3A25),
                          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0)
                        ),
                        onPressed: () {}, 
                        child: const Text('Log In', style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white70,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            onPrimary: const Color(0xffEF3A25),
                            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0)
                          ),
                          onPressed: () {}, 
                          child: const Text('Join Us', style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                    ],
                  ),
                ),
                Center(
                  child: Card(
                    elevation: 10.0,
                    margin: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: const [
                            Text(
                              'Certified Teacher',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                              ),
                            ),
                            Divider(height: 5.0, color: Colors.black),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Text('The gradual accumulation of information about atomic and small scale behaviour...',
                              textAlign: TextAlign.center,
                              style: TextStyle(
        
                                )
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0,),
                Center(
                  child: Card(
                    elevation: 10.0,
                    margin: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: const [
                            Text(
                              '2,769 Courses',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                              ),
                            ),
                            Divider(height: 5.0, color: Colors.black),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Text('The gradual accumulation of information about atomic and small scale behaviour...',
                              textAlign: TextAlign.center,
                              style: TextStyle(
        
                                )
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0,),
                Center(
                  child: Card(
                    elevation: 10.0,
                    margin: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: const [
                            Text(
                              'Certified Teacher',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                              ),
                            ),
                            Divider(height: 5.0, color: Colors.black),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Text('The gradual accumulation of information about atomic and small scale behaviour...',
                              textAlign: TextAlign.center,
                              style: TextStyle(
        
                                )
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                academics(context),
                admission(context),
                about(context),
              ]
              ,),
          ),
        )
        ),
      );
  }

  Widget academics(BuildContext context) => const ExpansionTile(
    title: Text(
      'Academics',
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'Lato',
        fontWeight: FontWeight.bold,
        letterSpacing: 2.0,
      ),
      ),
      children: [
        Text(
          'Department of Industrial Engineering',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Lato',
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(
          height: 10.0,
          color: Colors.blueGrey,
        ),
        Text(
          'History',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5.0,),
        Text('The College of Industrial Technology traces its roots from the Technical Department of the then Philippine School of Arts and Trades adapted in 1937 which later became the Philippine College of Arts and Trades...',
        ),
        Text(
          'Goals',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5.0,),
        Text('The College of Industrial Technology develop highly skilled technicians, technologist, and applied researchers who are needed to sustain industrial growth and develop for the enhancement of quality of life.',
        ),
        Text(
          'Objectives',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5.0,),
        Text('\u2022 Develop, improve and implement training program to attain effective delivery system of technological education.',
        ),
        Text('\u2022 Strengthen faculty qualification and rank.',
        textAlign: TextAlign.left,
        ),
        Text('\u2022 Provide opportunities for faculty researches and come up with new concepts, materials and processes.',
        ),
        Text('\u2022 Make available the facilities of the College and expertise of the faculty to the community.',
        ),
      ],
    );

  Widget admission(BuildContext context) => const ExpansionTile(
    title: Text(
      'Admission',
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'Lato',
        fontWeight: FontWeight.bold,
        letterSpacing: 2.0,
      ),
      ),
      children: [
        Text(
          'ADMISSIONS AT TUP',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Lato',
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(
          height: 10.0,
          color: Colors.blueGrey,
        ),
        Text('''
            The Office of Admissions assists students to obtain a realistic picture of their abilities, aptitudes, interests, personality characteristics and school achievements. The objectives are as follows: (1) to enable the student's realize the full extent of their educational potentials; (2) to identify student's strengths and weaknesses; and (3) to know the implication of these, thus, help the counselor have a better picture of the students.
Other Announcements
The Admissions Office has already started accepting freshmen applicants for School Year 2019-2020. Interested applicants may download the TUP Application Form for College Admission Test available in this web site and accomplish this and present together with the requirements to the Admissions Office from Monday to Friday, 8:00am to 5:00pm. The admission test is given every third Sunday of the month and the result is released three weeks after.
            ''',
        ),
        SizedBox(height: 5.0,),

      ],
    );
  
  Widget about(BuildContext context) => const ExpansionTile(
    title: Text(
      'About',
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'Lato',
        fontWeight: FontWeight.bold,
        letterSpacing: 2.0,
      ),
      ),
      children: [
        Text(
          'Technological University of the Philippines - Cavite',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Lato',
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(
          height: 10.0,
          color: Colors.blueGrey,
        ),
        SizedBox(height: 5.0,),
        Text('''
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

              Ullamco laboris nisi ut aliquip ex ea commodo consequat
              Duis aute irure dolor in reprehenderit in voluptate velit
              Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda
              Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
            ''',
        style: TextStyle(

        )
        )
      ],
    );
}
