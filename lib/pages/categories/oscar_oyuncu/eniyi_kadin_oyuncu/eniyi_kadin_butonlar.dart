// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'eniyi_kadin_bilgiler.dart';
import 'eniyi_kadin_eserler.dart';

class EniyiKadinButon extends StatelessWidget {
  const EniyiKadinButon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.lime[800],
        title: Text(
          "OSCAR EN İYİ KADIN OYUNCU ÖDÜLÜ",
          style: TextStyle(
              color: Colors.limeAccent[400],
              fontSize: 17,
              fontFamily: "Lobster"),
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.black,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.limeAccent[400],
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(200)))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EniyiKadinEserler(
                            kadinindex: index,
                            kadinfoto: kadinoyuncufoto[index]),
                      ));
                },
                child: Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Image(
                      image: AssetImage(kadinoyuncufoto[index]),
                      height: 120,
                      width: 80,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      kadinoyuncuadi[index],
                      style: const TextStyle(color: Colors.green),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
