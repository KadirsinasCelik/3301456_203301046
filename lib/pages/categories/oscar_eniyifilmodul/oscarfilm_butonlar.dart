import 'package:flutter/material.dart';
import 'oscarfilm_bilgiler.dart';
import 'oscarfilm_eserler.dart';

class OscarFilmButonlar extends StatelessWidget {
  const OscarFilmButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          "OSCAR EN İYİ FİLM ÖDÜLÜ",
          style:
              TextStyle(color: Colors.lightBlueAccent, fontFamily: "Lobster"),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.black,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(600),
                            topLeft: Radius.circular(600)))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OscarFilmEserler(
                            index: index, osfilmfoto: oscarfilmfoto[index]),
                      ));
                },
                child: Row(
                  children: [
                    const SizedBox(width: 30),
                    Image(
                      image: AssetImage(oscarfilmfoto[index]),
                      height: 100,
                      width: 70,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      oscarfilmadi[index],
                      style: TextStyle(color: Colors.blue[900]),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
