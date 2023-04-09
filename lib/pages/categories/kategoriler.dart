import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/categories/film_history.dart';
import 'package:flutter_application_2/pages/categories/yuksek_imdb.dart/imdb_butonlar.dart';
import 'gise_rekortmenleri.dart/gise_butonlar.dart';
import 'oscar_eniyifilmodul/oscarfilm_butonlar.dart';
import 'oscar_oyuncu/eniyi_erkek_oyuncu/en_iyi_erkek_butonlar.dart';
import 'oscar_oyuncu/eniyi_erkeky_oyuncu/en_iyi_erkeky_butonlar.dart';
import 'oscar_oyuncu/eniyi_kadin_oyuncu/eniyi_kadin_butonlar.dart';
import 'oscar_oyuncu/eniyi_kadiny_oyuncu/eniyi_kadiny_butonlar.dart';

class Kategoriler extends StatefulWidget {
  const Kategoriler({super.key});

  @override
  State<Kategoriler> createState() => _Kategoriler();
}

class _Kategoriler extends State<Kategoriler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Center(
          child: Text(
            "KATEGORİLER",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Lobster",
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 10,
              color: Colors.amber,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 80,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue[200],
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GiseButonlar()));
                        },
                        child: Column(
                          children: [
                            const SizedBox(height: 9),
                            Icon(Icons.attach_money, color: Colors.amber[600]),
                            const Text(
                              " GİŞE HASILAT REKORTMENLERİ",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.blue),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 80,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50))),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const OscarFilmButonlar()));
                        },
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 9,
                            ),
                            Icon(Icons.emoji_events,
                                color: Colors.amber[600]), //
                            const Text("OSCAR EN İYİ FİLM ÖDÜLÜ",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.cyanAccent),
                                textAlign: TextAlign.center),
                          ],
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 80,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FilmHistory()));
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(height: 41),
                                const Icon(
                                  Icons.workspace_premium_outlined,
                                  color: Colors.amberAccent,
                                ),
                                Icon(
                                  Icons.emoji_events,
                                  color: Colors.orange[600],
                                ),
                                const Icon(
                                  Icons.workspace_premium_outlined,
                                  color: Colors.amberAccent,
                                )
                              ],
                            ),
                            const Text(
                              "FİLMLERİN TARİHÇESİ",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.cyanAccent),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 80,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue[200],
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ImdbButonlar()));
                        },
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Icon(
                              Icons.auto_graph_outlined,
                              color: Colors.cyanAccent[100],
                            ),
                            const Text(
                              "EN YÜKSEK IMDB PUANI ALAN FİLMLER",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.blue),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 80,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue[200],
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const EniyiKadinButon()));
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 35,
                                ),
                                Icon(
                                  Icons.emoji_events_outlined,
                                  color: Colors.red[800],
                                ),
                                Icon(
                                  Icons.woman,
                                  color: Colors.purple[600],
                                )
                              ],
                            ),
                            const Text(
                              "OSCAR EN İYİ KADIN OYUNCU ÖDÜLÜ ",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.blue),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 80,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[600],
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const EniyiKadinyButon()));
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 35,
                                ),
                                Icon(
                                  Icons.workspace_premium_sharp,
                                  color: Colors.red[900],
                                ),
                                Icon(
                                  Icons.woman,
                                  color: Colors.purple[600],
                                ),
                              ],
                            ),
                            const Text(
                              "OSCAR EN İYİ YARDIMCI KADIN OYUNCU ÖDÜLÜ",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.cyanAccent),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 80,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[600],
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const EnErkekButonlar()));
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 40,
                                ),
                                Icon(
                                  Icons.emoji_events_outlined,
                                  color: Colors.orange[900],
                                ),
                                Icon(
                                  Icons.man,
                                  color: Colors.blue[900],
                                )
                              ],
                            ),
                            const Text(
                              "OSCAR EN İYİ ERKEK OYUNCU ÖDÜLÜ",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.cyanAccent),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 80,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue[200],
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50))),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const EnErkekYButonlar()));
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 35,
                                ),
                                Icon(
                                  Icons.workspace_premium_sharp,
                                  color: Colors.orange[900],
                                ),
                                Icon(
                                  Icons.man,
                                  color: Colors.blue[900],
                                )
                              ],
                            ),
                            const Text(
                              "OSCAR EN İYİ YARDIMCI ERKEK OYUNCU ÖDÜLÜ",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.blue),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 10,
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}
