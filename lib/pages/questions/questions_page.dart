import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/questions/questions.dart';

// ignore: camel_case_types
class Coktan_secmeli extends StatefulWidget {
  const Coktan_secmeli({super.key});

  @override
  State<Coktan_secmeli> createState() => _Coktan_secmeliState();
}

// ignore: camel_case_types
class _Coktan_secmeliState extends State<Coktan_secmeli> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      appBar: AppBar(
        title: const Center(
            child: Text(
          'BİLGİNİZİ SINAYIN',
          style: TextStyle(color: Colors.cyanAccent, fontFamily: 'Lobster'),
        )),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 10,
              color: Colors.amber,
            ),
            Expanded(
              flex: 3,
              child: Center(
                child: SizedBox( 
                    child: Card(
                        color: Colors.red[900],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(color: Colors.amber[600],       
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60))),
                            child: Text(MyTest.soru_metnini_yaz(),
                                style: const TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'Lobster',
                                    color: Colors.cyan),
                                textAlign: TextAlign.center),
                          ),
                        ))),
              ),
            ),
            Container(
              height: 10,
              color: Colors.amber,
            ),
            const SizedBox(height: 10),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape:const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60))) ,
                            backgroundColor: Colors.blueAccent),
                        onPressed: () {
                          setState(() {
                            MyTest.answer_control("A", context);
                          });
                        },
                        child: Text(MyTest.a_sikki_yaz())),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(60))),
                            backgroundColor: Colors.blueAccent[200]),
                        onPressed: () {
                          setState(() {
                            MyTest.answer_control("B", context);
                          });
                        },
                        child: Text(MyTest.b_sikki_yaz())),
                  )),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(60))),
                            backgroundColor: Colors.orange[700]),
                        onPressed: () {
                          setState(() {
                            MyTest.answer_control("C", context);
                          });
                        },
                        child: Text(MyTest.c_sikki_yaz())),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(60))),
                            backgroundColor: Colors.orange[600]),
                        onPressed: () {
                          setState(() {
                            MyTest.answer_control("D", context);
                          });
                        },
                        child: Text(MyTest.d_sikki_yaz())),
                  )),
                ],
              ),
            ),
            const Text(
              'Gidişat Bilgisi',
              style: TextStyle(
                  fontSize: 20.0, fontFamily: 'Lobster', color: Colors.amber),
            ),
            Row(children: MyTest.d_y_bilgisi),
            const SizedBox(height: 30.0)
          ],
        ),
      ),
    );
  }
}
