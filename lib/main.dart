import 'package:flutter/material.dart';
import 'pages/tabbar_view.dart';

void main() {
  runApp(const Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
 
      ),

    initialRoute:'/',

    routes:{

'/Tab':(context) => const TabbBar()


    }

    ,  home:   const TabbBar()
    );
  }
}



