import 'package:flutter/material.dart';
import 'dart:async';

import 'package:neta_event/Slash%20Screen/Group_SC.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neta-Event',
     /* theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color.fromRGBO(19, 33, 55, 1),
          ),*/
       //   scaffoldBackgroundColor: Color.fromRGBO(247, 235, 225, 1)),


      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

  @override
  void initState() {

    super.initState();
    Timer(
        const Duration(seconds: 2),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Group_SC() )));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
     //   color: const Color(0xffF7EBE1),
        child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/SlashScreen/frame1.png',
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.9,
                  scale: 0.5,
                ),
              ],
            )));
  }
}

