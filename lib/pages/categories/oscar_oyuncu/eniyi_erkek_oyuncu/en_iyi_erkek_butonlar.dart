import 'package:flutter/material.dart';
import 'en_iyi_erkek_bilgiler.dart';
import 'en_iyi_erkek_eserler.dart';

class EnErkekButonlar extends StatelessWidget {
  const EnErkekButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: const Text(
          "OSCAR EN İYİ ERKEK OYUNCU ÖDÜLÜ",
          style: TextStyle(fontSize: 16, fontFamily: "Lobster"),
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.black,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(133, 76, 196, 172),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(600)))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EniyierkekEserler(
                            indeksi: index, efoto: erkekoyuncufoto[index]),
                      ));
                },
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    Image(
                        image: AssetImage(erkekoyuncufoto[index]),
                        height: 120,
                        width: 80,
                        fit: BoxFit.fill),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      erkekoyuncuadi[index],
                      style: const TextStyle(color: Colors.greenAccent),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
