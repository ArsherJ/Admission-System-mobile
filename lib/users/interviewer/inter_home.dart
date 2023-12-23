import 'package:flutter/material.dart';


void main() {
  runApp(const MaterialApp(
    home: InterHome(),
  ));
}

class InterHome extends StatelessWidget {
  const InterHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interviewer Dashboard'),
        centerTitle: true,
        backgroundColor: const Color(0xFFEF3A25),
      ),
      // body: Builder(
      //   builder: (context) {
      //     return Center(
      //       child: SizedBox(
      //         height: 50,
      //         width: MediaQuery.of(context).size.width - 100,
      //         child: ElevatedButton.icon(
      //           style: ElevatedButton.styleFrom(
      //             primary: Colors.black,
      //           ),
      //           onPressed: () {
      //             Scaffold.of(context).openDrawer();
      //           },
      //           icon: const Icon(Icons.open_in_new, color: Colors.white),
      //           label: const Text(
      //             'Open Navigation Drawer',
      //             style: TextStyle(color: Colors.white),
      //           ),
      //         ),
      //       ),
      //     );
      //   }
      // )
    );
  }
}
