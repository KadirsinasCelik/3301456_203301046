//  mesela 2 sayfa arasında ileri geri geçiş sağlıyor.
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home_page.dart';
import 'package:flutter_application_2/pages/questions/questions_page.dart';
import 'categories/kategoriler.dart';

class TabbBar extends StatefulWidget {
  const TabbBar({Key? key}) : super(key: key);

  @override
  State<TabbBar> createState() => _TabbBarState();
}

class _TabbBarState extends State<TabbBar> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      animationDuration: Duration(seconds: 1),
      length: 3,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
            color: Colors.cyan,
            child: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.amber,
              tabs: [
                Tab(
                    text: 'Ana Sayfa',
                    icon: Icon(
                      Icons.home,
                    )),
                Tab(
                  text: 'Kategoriler',
                  icon: Icon(Icons.menu_book_outlined),
                ),
                Tab(
                  text: 'Film Testi',
                  icon: Icon(Icons.question_mark_sharp),
                ),
              ],
            )),
        body: TabBarView(physics: NeverScrollableScrollPhysics(), children: [
          AnaSayfa(),
          Kategoriler(),
          Coktan_secmeli(),
        ]),
      ),
    );
  }
}
