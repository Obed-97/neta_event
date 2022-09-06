  import 'package:flutter/material.dart';

  class HomePage extends StatefulWidget
  {
    const HomePage({Key? key}) : super(key: key);

    @override
    _HomePage_State createState() => _HomePage_State();
  }

  class _HomePage_State extends State<HomePage>
  {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
         /* actions: [
            Icon(Icons.more_vert),
          ],*/
          backgroundColor: Colors.transparent,
          toolbarHeight: MediaQuery.of(context).size.height *0.15, //set your height
          flexibleSpace: SafeArea(
            child: Container(
              decoration:
              new BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
                gradient: new LinearGradient(
                  colors: [Colors.purple, Colors.pink],
                  begin: FractionalOffset.centerLeft,
                  end: FractionalOffset.centerRight,
                ),
              ), // set your color
              child: Column(
                children: [
                      Row(
                        children: [
                          InkWell(
                              onTap: () {},
                            child: Icon (Icons.dehaze_rounded, color: Colors.white,size : 35),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.2,),
                          Row(children: [
                            Text("Hey Bienvenue",
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.black,
                              ),
                            ),
                          ],)
                        ],
                      )
                ],
              ),
            ),
          ),
        ),

       // drawer: Drawer(),
      );

    }
  }