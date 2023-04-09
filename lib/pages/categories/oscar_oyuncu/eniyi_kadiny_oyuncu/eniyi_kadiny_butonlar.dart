// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'eniyi_kadiny_bilgiler.dart';
import 'eniyi_kadiny_eserler.dart';

class EniyiKadinyButon extends StatelessWidget {
  const EniyiKadinyButon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Text(
          "OSCAR EN İYİ YARDIMCI KADIN OYUNCU ÖDÜLÜ",
          style: TextStyle(
              fontSize: 13.96, fontFamily: "Lobster", color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.black,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey[500],
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(600)))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EniyiKadinyEserler(
                          kadinyindex: index,
                          kadinyfoto: kadinoyuncuyfoto[index],
                        ),
                      ));
                },
                child: Row(
                  children: [
                    Image(
                      image: AssetImage(kadinoyuncuyfoto[index]),
                      height: 100,
                      width: 70,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      kadinoyuncuyadi[index],
                      style: TextStyle(color: Colors.blueGrey[900]),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
