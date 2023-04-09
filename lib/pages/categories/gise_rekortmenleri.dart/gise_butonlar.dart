import 'package:flutter/material.dart';
import 'gise._eserler.dart';
import 'gise_bilgiler.dart';

class GiseButonlar extends StatelessWidget {
  const GiseButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text(
          "GİŞE REKORTMENLERİ",
          style: TextStyle(fontFamily: "Lobster"),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 100,
            child: Card(
              color: Colors.yellow,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[900],
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(600),
                              topRight: Radius.circular(600)))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GiseEserler(
                            indeks: index,
                            rekorfotograf: rekorfotograf[index],
                          ),
                        ));
                  },
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Image(image: AssetImage(rekorfotograf[index])),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(rekoradi[index],
                          style: const TextStyle(
                              color: Colors.yellow,
                              fontSize: 20,
                              fontFamily: 'Lobster')),
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }
}
