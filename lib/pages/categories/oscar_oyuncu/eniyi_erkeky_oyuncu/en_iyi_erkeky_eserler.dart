import 'package:flutter/material.dart';
import 'en_iyi_erkeky_bilgiler.dart';

class EniyiErkekYeserler extends StatefulWidget {
  const EniyiErkekYeserler({super.key, this.erkekyindex, this.erkekyfoto});
  // ignore: prefer_typing_uninitialized_variables
  final int? erkekyindex;
  // ignore: prefer_typing_uninitialized_variables
  final String? erkekyfoto;

  @override
  State<EniyiErkekYeserler> createState() => _EniyiErkekYeserlerState();
}

class _EniyiErkekYeserlerState extends State<EniyiErkekYeserler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[400],
        title: Text(erkekoyuncuyadi[widget.erkekyindex!]),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 22,
          ),
          Card(
              color: Colors.cyan[200],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(image: AssetImage(widget.erkekyfoto!)),
              )),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                color: Colors.cyan,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    erkekoyuncubilgilery[widget.erkekyindex!],
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
