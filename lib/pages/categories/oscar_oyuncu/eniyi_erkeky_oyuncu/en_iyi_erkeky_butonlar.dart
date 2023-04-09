import 'package:flutter/material.dart';
import 'en_iyi_erkeky_bilgiler.dart';
import 'en_iyi_erkeky_eserler.dart';


class EnErkekYButonlar extends StatelessWidget {
  const EnErkekYButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
appBar: AppBar(
  backgroundColor: Colors.cyan[600],
  title: const Text("OSCAR EN İYİ YARDIMCI ERKEK OYUNCU ÖDÜLÜ",style: TextStyle(fontSize: 13,fontFamily: "Lobster")),
),
body: ListView.builder(
  itemCount: 4,
  itemBuilder: (context, index) {
    return Card(
color:Colors.black,

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(600)))
        ),
        onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>EniyiErkekYeserler(erkekyindex:index ,erkekyfoto:erkekoyuncuyfoto[index] ),));
      }, child: Row(
        children: [
          const SizedBox(width: 20,),
          Image(image: AssetImage(erkekoyuncuyfoto[index]),height: 120,width: 80,fit: BoxFit.fill,),
          const SizedBox(width: 10,),
          Text(erkekoyuncuyadi[index]),
        ],
      )),
    );
  },),

    );
  }
}