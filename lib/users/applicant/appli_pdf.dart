import 'package:flutter/material.dart';

class AppliPdf extends StatefulWidget {
  const AppliPdf({Key? key}) : super(key: key);

  @override
  State<AppliPdf> createState() => _AppliPdfState();
}

class _AppliPdfState extends State<AppliPdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Print PDF'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 195, 29, 57),
      ),
      body: ListView(padding: const EdgeInsets.all(13), children: <Widget>[
        Card(
          shadowColor: const Color(0xFFEF3A25),
          elevation: 12,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: const EdgeInsets.fromLTRB(4, 16, 4, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const ListTile(
                  leading: Icon(
                    Icons.picture_as_pdf,
                    color: Color(0xFFEF3A25),
                    size: 50,
                  ),
                  title: Text(
                    'PRE-ADMISSION CHECKLIST',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                const Divider(
                    height: 25.0, thickness: 1, color: Color(0xFFEF3A25)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 2, 10),
                  child: ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {},
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(Icons.file_download),
                              const SizedBox(
                                width: 15,
                              ),
                              const Text('Click Here to Download PDF'),
                            ],
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
