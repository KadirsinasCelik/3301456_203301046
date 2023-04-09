// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'eniyi_kadin_bilgiler.dart';

class EniyiKadinEserler extends StatefulWidget {
  const EniyiKadinEserler({super.key, this.kadinindex, this.kadinfoto});
  // ignore: prefer_typing_uninitialized_variables
  final int? kadinindex;
  // ignore: prefer_typing_uninitialized_variables
  final String? kadinfoto;

  @override
  State<EniyiKadinEserler> createState() => _EniyiKadinEserlerState();
}

class _EniyiKadinEserlerState extends State<EniyiKadinEserler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[700],
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text(kadinoyuncuadi[widget.kadinindex!]),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 22,
          ),
          Card(
              color: Colors.lime,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(widget.kadinfoto!),
                  height: 300,
                  width: 200,
                  fit: BoxFit.fill,
                ),
              )),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                color: Colors.limeAccent[100],
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(kadinoyuncubilgiler[widget.kadinindex!],
                        style: const TextStyle(fontStyle: FontStyle.italic),
                        textAlign: TextAlign.center),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
