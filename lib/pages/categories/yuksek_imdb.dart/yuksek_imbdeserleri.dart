// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:flutter_application_2/pages/categories/yuksek_imdb.dart/yuksek_imdb.dart';

class ImbdEserler extends StatefulWidget {
  const ImbdEserler(
      {super.key, required this.yuksekimdbfoto, required this.indeksI});

  // ignore: prefer_typing_uninitialized_variables
  final int? indeksI;
  final String? yuksekimdbfoto;

  @override
  State<ImbdEserler> createState() => _ImbdEserlerState();
}

class _ImbdEserlerState extends State<ImbdEserler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber[900],
        title: Text(imbdadi[widget.indeksI!]),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Card(
              color: Colors.amber[900],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(widget.yuksekimdbfoto!),
                  height: 300,
                ),
              )),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50))),
                color: Colors.amber[700],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    yuksekimdbilgileri[widget.indeksI!],
                    style: const TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
