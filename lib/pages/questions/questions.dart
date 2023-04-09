import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Test MyTest = Test();

class Test {
  // ignore: non_constant_identifier_names
  int now_question = 0;
// ignore: non_constant_identifier_names
  List<Icon> d_y_bilgisi = [];

  // ignore: non_constant_identifier_names
  List<Question> Questions = [
    Question(
      question_text:
          "239 ödül, 175 adaylık alan film aşağıdakilerden hangisidir",
      a: "Mad Max",
      b: "Avatar",
      c: "Avatar:Suyun Yolu",
      d: "Gravity",
      cevap: "D",
    ),
    Question(
        question_text: "2022 Oscar En İyi Film ödülünü hangi film almıştır?",
        a: "Zamana Yolculuk",
        b: "Ben Efsaneyim",
        c: "Dünya Yeni Bir Başlangıç",
        d: "CODA",
        cevap: "D"),
    Question(
        question_text:
            "1997 yılı Amerikan yapımı olan bir geminin batışı üzerine çekilmiş, gişe rekoru kıran film hangisidir? ",
        a: "Titanik",
        b: "Siyah Giyen Adamlar",
        c: "Matrix",
        d: "12 Kızgın Adam",
        cevap: "A"),
    Question(
        question_text:
            "Oyunculardan hangisi son beş yılda En İyi Yardımcı Kadın Oyuncu Oscar Ödülü almamıştır?",
        a: "Emma Watson",
        b: "Yoon Yeo-jeong",
        c: "Laura Dern Marriage",
        d: "Ariana DeBose",
        cevap: "A"),
    Question(
        question_text:
            "Aşağıdakilerden hangisi Imdb sırasında birinci olan filmdir?",
        a: "Esaretin Bedeli",
        b: "Yeşil Yol",
        c: "God Father",
        d: "Iron Man",
        cevap: "A"),
    Question(
        question_text:
            "2019 Oscar En İyi Yardımcı Erkek Oyuncu Ödülü'nü alan aktör kimdir?",
        a: "Tom Cruise",
        b: "Leonardo DiCaprio",
        c: "Mahershala Ali",
        d: "Al Pacino",
        cevap: "C"),
    Question(
        question_text:
            "Jessica Chastain hangi yıl Oscar En İyi Kadın Oyuncu Ödülünü Almıştır?",
        a: "2019",
        b: "2018",
        c: "2022",
        d: "2021",
        cevap: "C"),
    Question(
        question_text:
            "Oscar En İyi Erkek Oyuncu Ödülünü 2022 Yılında Hangi Aktör Almıştır?",
        a: "Will Smith",
        b: "Jackie Chan",
        c: "Aaron Paul",
        d: "Kevin Bacon",
        cevap: "A"),
    Question(
        question_text: "İlk Sinema Filmi hangi ülkede çekilmiştir?",
        a: "Fransa",
        b: "Türkiye",
        c: "Çin",
        d: "Amerika",
        cevap: "A"),
    Question(
        question_text:
            "Şu an kullanmakta olduğunuz uygulamada kaç adet kategori bulunmaktadır?",
        a: "6",
        b: "8",
        c: "10",
        d: "12",
        cevap: "B"),
    Question(
        question_text: "İlk Sinema Filmi nerede kayıda alınmıştır?",
        a: "Tren İstasyonu",
        b: "Rıhtım",
        c: "Hava Alanı",
        d: "Otogar",
        cevap: "A"),
    Question(
        question_text:
            "Tüm zamanların en çok gişe hasılatını getiren film hangisidir?",
        a: "Avatar",
        b: "Titanik",
        c: "Endgame",
        d: "Yıldızlararası",
        cevap: "A"),
    Question(
        question_text:
            "Aşağıdakilerden hangisi Oscar kategorileri arasında yer almaz?",
        a: "Senaristlik",
        b: "Dublörlük",
        c: "Yönetmenlik",
        d: "Oyunculuk",
        cevap: "B"),
    Question(
        question_text: "En yüksek imdb değeri nedir?",
        a: "9.0",
        b: "8.9",
        c: "9.3",
        d: "9.4",
        cevap: "C"),
    Question(
        question_text:
            "İlk iki filmi +9 imdb notu alan film serisi hangisidir?",
        a: "The Godfather",
        b: "Batman",
        c: "Matrix",
        d: "Yüzüklerin Efendisi",
        cevap: "A"),

//metod
//metod
//metod
//metod
  ];

  // ignore: non_constant_identifier_names
  void next_question(BuildContext context) {
    if (Questions.length - 1 > now_question) {
      now_question++;
    } else {
      _showAlertDialog(context);
      now_question = 0;
    }
  }

  int dogru = 0;
  int yanlis = 0;

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        // Alert dialogun tasarımı
        return AlertDialog(
          backgroundColor: Colors.cyanAccent,
          actions: <Widget>[
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  Navigator.of(context).pop();
                  yanlis = 0;
                  dogru = 0;
                  d_y_bilgisi = [];
                },
                child: const Text(
                  "Testten Çık",
                  style: TextStyle(color: Colors.white),
                )),
          ],
          title: const Center(child: Text("Testiniz Bitti !")),
          content: SizedBox(
            height: 50,
            child: Column(
              children: [
                Text("Doğru Cevaplarınızın Sayısı: $dogru"),
                const SizedBox(
                  height: 10,
                ),
                Text("Yanlış Cevaplarınızın Sayısı: " + yanlis.toString()),
              ],
            ),
          ),
        );
      },
    );
  }

  // ignore: non_constant_identifier_names
  String soru_metnini_yaz() {
    return Questions[now_question].Question_Text;
  }

  // ignore: non_constant_identifier_names
  String a_sikki_yaz() {
    return Questions[now_question].A_sikki;
  }

  // ignore: non_constant_identifier_names
  String b_sikki_yaz() {
    return Questions[now_question].B_sikki;
  }

  // ignore: non_constant_identifier_names
  String c_sikki_yaz() {
    return Questions[now_question].C_sikki;
  }

  // ignore: non_constant_identifier_names
  String d_sikki_yaz() {
    return Questions[now_question].D_sikki;
  }

  // ignore: non_constant_identifier_names
  void answer_control(String aQuest, BuildContext context) {
    if (Questions[now_question].Answer == aQuest) {
      d_y_bilgisi.add(const Icon(color: Colors.green, Icons.check));

      dogru++;
    } else {
      d_y_bilgisi.add(const Icon(color: Colors.red, Icons.close));

      yanlis++;
    }
    next_question(context);
  }
}

//YAPI
class Question {
  // ignore: non_constant_identifier_names
  String Question_Text = "";
  // ignore: non_constant_identifier_names
  String A_sikki = "";
  // ignore: non_constant_identifier_names
  String B_sikki = "";
  // ignore: non_constant_identifier_names
  String C_sikki = "";
  // ignore: non_constant_identifier_names
  String D_sikki = "";
  // ignore: non_constant_identifier_names
  String Answer = "";

//yapıcı method

  Question(
      // ignore: non_constant_identifier_names
      {required String question_text,
      required String a,
      required String b,
      required String c,
      required String d,
      required String cevap}) {
    Question_Text = question_text;
    A_sikki = a;
    B_sikki = b;
    C_sikki = c;
    D_sikki = d;
    Answer = cevap;
  }
}
