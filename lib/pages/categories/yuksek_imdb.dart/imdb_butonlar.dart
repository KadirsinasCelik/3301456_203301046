import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/categories/yuksek_imdb.dart/yuksek_imbdeserleri.dart';
import 'package:flutter_application_2/pages/categories/yuksek_imdb.dart/yuksek_imdb.dart';

class ImdbButonlar extends StatelessWidget {
  const ImdbButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.amber[900],
          title: const Text(
            "EN YÜKSEK IMDB PUANI ALAN FİLMLER",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Lobster",
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.black,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber[800],
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(600),
                              topRight: Radius.circular(600)))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ImbdEserler(
                                  indeksI: index,
                                  yuksekimdbfoto: yuksekimdbfoto[index],
                                )));
                  },
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Image(
                          image: AssetImage(yuksekimdbfoto[index]),
                          height: 100,
                          width: 70,
                          fit: BoxFit.fill),
                      const SizedBox(width: 10),
                      Text(
                        imbdadi[index],
                        style: TextStyle(color: Colors.amberAccent[100]),
                      ),
                    ],
                  )),
            );
          },
        ));
  }
}
