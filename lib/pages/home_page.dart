// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AnaSayfa createState() => _AnaSayfa();
}

class _AnaSayfa extends State<AnaSayfa> {
  final List<String> images = [
    "assets/esaretinbedeli.jpg",
    "assets/godfather.png",
    "assets/darkinight.jpg",
    "assets/godfather2.jpg",
    "assets/schindler's.jpg",
    "assets/ilkfilmciler.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      appBar: AppBar(
        title: const Center(
          child: Text(
            "FİLM ANSİKLOPEDİSİ",
            style: TextStyle(color: Colors.cyanAccent, fontFamily: "Lobster"),
          ),
        ),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 300.0,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.5,
            ),
            items: images
                .map((item) => Center(
                      child: Image.asset(
                        item,
                        fit: BoxFit.fill,
                        height: 800,
                        width: 600,
                      ),
                    ))
                .toList(),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.amber,
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  textAlign: TextAlign.center,
                  """Film Ansiklopedisi Uygulaması'na Hoşgeldiniz. Uygulamada; en çok ödül almış filimler, gişe hasılat rekorları kırmış filmler, En İyi Oyuncu ve En İyi Yardımcı Oyuncu Ödülleri almış aktörler, Yılın En İyi Film ödülünü almış filmler (Oscar) ve en yüksek imdb puanı almış film kategorileri bulunmaktadır. İzleyecek film mi bulamadınız? O zaman Film Arşivi tam size göre. """,
                  style: TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.cyan),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.amber,
            height: 10,
          )
        ],
      ),
    );
  }
}
