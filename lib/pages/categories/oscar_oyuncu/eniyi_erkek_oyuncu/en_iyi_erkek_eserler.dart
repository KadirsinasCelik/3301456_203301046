import 'package:flutter/material.dart';

import 'en_iyi_erkek_bilgiler.dart';

class EniyierkekEserler extends StatefulWidget {
  const EniyierkekEserler(
      {super.key, required this.indeksi, required this.efoto});
  final int? indeksi;
  final String? efoto;

  @override
  State<EniyierkekEserler> createState() => _EniyierkekEserler();
}

class _EniyierkekEserler extends State<EniyierkekEserler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(erkekoyuncuadi[widget.indeksi!]),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Card(
              color: Colors.lightGreen[500],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(widget.efoto!),
                  height: 300,
                  width: 200,
                  fit: BoxFit.fill,
                ),
              )),
          const SizedBox(height: 22),
          Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              color: Colors.green[200],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(erkekoyuncubilgiler[widget.indeksi!],
                    style: const TextStyle(fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center),
              ))
        ],
      ),
    );
  }
}
