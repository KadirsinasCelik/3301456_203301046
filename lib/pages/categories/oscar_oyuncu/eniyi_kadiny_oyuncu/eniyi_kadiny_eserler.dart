// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'eniyi_kadiny_bilgiler.dart';

class EniyiKadinyEserler extends StatefulWidget {
  const EniyiKadinyEserler({super.key, this.kadinyindex, this.kadinyfoto});
// ignore: prefer_typing_uninitialized_variables
  final int? kadinyindex;
// ignore: prefer_typing_uninitialized_variables
  final String? kadinyfoto;

  @override
  State<EniyiKadinyEserler> createState() => _EniyiKadinyEserlerState();
}

class _EniyiKadinyEserlerState extends State<EniyiKadinyEserler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(kadinoyuncuyadi[widget.kadinyindex!]),
      ),
      body: Column(children: [
        const SizedBox(
          height: 22,
        ),
        Card(
            color: Colors.grey[500],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage(widget.kadinyfoto!)),
            )),
        const SizedBox(height: 22),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(40))),
              color: Colors.blueGrey[800],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    kadinoyuncuybilgiler[widget.kadinyindex!],
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              )),
        )
      ]),
    );
  }
}
