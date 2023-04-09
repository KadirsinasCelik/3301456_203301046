import 'package:flutter/material.dart';
import 'gise_bilgiler.dart';

class GiseEserler extends StatefulWidget {
  const GiseEserler(
      {super.key, required this.indeks, required this.rekorfotograf});
  final int? indeks;
  final String? rekorfotograf;

  @override
  State<GiseEserler> createState() => _GiseEserlerState();
}

class _GiseEserlerState extends State<GiseEserler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[700],
      appBar: AppBar(
          backgroundColor: Colors.yellow[600],
          title: Text(rekoradi[widget.indeks!],
              style: const TextStyle(color: Colors.red))),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
              child: Card(
                  color: Colors.red[600],
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image(image: AssetImage(widget.rekorfotograf!)),
                  ))),
          const SizedBox(height: 22),
          Center(
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60)),
                  color: Colors.red[900],
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Text(
                      rekorbilgileri[widget.indeks!],
                      style: const TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ))),
        ],
      ),
    );
  }
}
