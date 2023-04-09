import 'package:flutter/material.dart';

class FilmHistory extends StatelessWidget {
  const FilmHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "FİLMLERİN  TARİHÇESİ?",
          style: TextStyle(color: Colors.redAccent, fontFamily: 'Lobster'),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 10,
            color: Colors.red,
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              color: Colors.amberAccent,
              child: Center(
                  child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                    style: TextStyle(fontStyle: FontStyle.italic),
                    """İki boyutlu imajların hareketli olarak gösterilmesi mekanizmasının varlığı 1860'lı yıllara kadar geri gider. Bu yıllarda zoetrope ve praxinoscope denilen basit optik aygıtların gelişmişi olan aygıtlar kullanılmaktaydı. Fotoğrafçılıkta hâlâ kullanılan selüloit filmin geliştirilmesiyle nesnelerin gerçek zamanlı hareketini yakalamak mümkün olmuştur. İlk versiyonlarda izleyicinin akış halindeki resimleri görmesi için özel bir aygıtın içine bakması gerekiyordu. 1880'lere kadar olan gelişmelerle kameraların gerçek zamanlı görüntüleri yakalaması filme kayıt etmesi ve perde üzerine yansıtarak tüm bir izleyici kitlesine izletilmesi mümkün olmuştur. "Hareketli resimler" (motion pictures) denilen bu gösterilerde görüntüler üzerinde herhangi bir sinema tekniği kullanılarak oynanamamaktaydı. İlk öykülü film 1902 yılında Georges Méliès tarafından Le Voyage dans la Lune (Aya Seyahat) adlı filmle gerçekleştirildi. 19. yüzyıla kadar hareketli resimler tamamen görsel bir sanat olmasına karşın ilk sessiz filmlerin kamu tarafından beğenilmişti. 20. yüzyılın başında filmler öyküsel bir yapı geliştirmeye başladı. Kamera hareketleri filmin hikâyesini daha etkili kılacak şekilde uygulanmaya başladı. Filmler sessiz olduğundan seyirciler salon sahipleri filmdeki hikâyenin geçiş şekline göre müzik üretecek bir piyanist veya orkestra kiralamaya başladılar. 1920'lerin başlarında çoğu film için bu amaçla hazır müzik listeleri oluşturuldu."""),
              )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.red,
            height: 10,
          )
        ],
      ),
    );
  }
}
