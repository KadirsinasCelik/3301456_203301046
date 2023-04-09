import 'package:flutter/material.dart';
import 'oscarfilm_bilgiler.dart';

class OscarFilmEserler extends StatefulWidget {
  const OscarFilmEserler(
      {super.key, required this.index, required this.osfilmfoto});
  final int? index;
  final String? osfilmfoto;

  @override
  State<OscarFilmEserler> createState() => _OscarFilmEserlerState();
}

class _OscarFilmEserlerState extends State<OscarFilmEserler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: Text(
          oscarfilmadi[widget.index!],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 22),
          Card(
              color: Colors.blue[200],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(widget.osfilmfoto!),
                  height: 300,
                  width: 200,
                  fit: BoxFit.fill,
                ),
              )),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(40))),
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(oscarfilmbilgiler[widget.index!],
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
