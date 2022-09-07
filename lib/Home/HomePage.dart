import 'package:flutter/material.dart';
import 'dart:ui';
  class HomePage extends StatefulWidget
  {
    const HomePage({Key? key}) : super(key: key);

    @override
    _HomePage_State createState() => _HomePage_State();
  }

  class _HomePage_State extends State<HomePage>
  {
    final GlobalKey<ScaffoldState> _key = GlobalKey();

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        key: _key,
        drawer: Drawer(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
         /* actions: [
            Icon(Icons.more_vert),
          ],*/
          backgroundColor: Colors.transparent,
          toolbarHeight: MediaQuery.of(context).size.height *0.15, //set your height
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(
                left: 15.0,
                right: 10.0,
              ),
              decoration:
              const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
                gradient:  LinearGradient(
                  colors: [Colors.purple, Colors.pink],
                  begin: FractionalOffset.centerLeft,
                  end: FractionalOffset.centerRight,
                ),
              ), // set your color
              child: Column(
                children: [
                      SizedBox(height: MediaQuery.of(context).size.height *0.02,),
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                _key.currentState!.openDrawer();
                              },
                            child: Icon (Icons.dehaze_rounded, color: Colors.white,size : 35),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.24,),
                          Column(children: const [
                            Text("Hey Bienvenue",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            Text("Sanago Yaya",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.24,),
                          InkWell(
                            onTap: () {

                            },
                            child: const Icon (Icons.notifications_none, color: Colors.white,size : 35),
                          ),

                        ],
                      ),
                  SizedBox(height:MediaQuery.of(context).size.height *0.01 ,),
                  Row(children: [
                    SizedBox(width:MediaQuery.of(context).size.width *0.03 ,),
                    InkWell(
                      onTap: () {
                        _key.currentState!.openDrawer();
                      },
                      child: const Icon (Icons.search, color: Colors.white,size : 30),
                    ),
                    SizedBox(width:MediaQuery.of(context).size.width *0.03 ,),
                    Container(
                      height: 22,
                      child: Text(""),
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(color: Colors.blue , width: 2.8),
                        ),
                      ),
                    ),
                    SizedBox(width:MediaQuery.of(context).size.width *0.02 ,),
                    const SizedBox(width: 150, height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Username',
                        hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                      ),
                    ),
                    ),

                    SizedBox(width:MediaQuery.of(context).size.width *0.02 ,),
                    Container(
                      height: 45,
                      padding: const EdgeInsets.only(
                        left: 30.0,
                        right: 30.0,
                        top: 5,
                        bottom: 2,
                      ),
                      decoration:
                       BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Color(0xFF701D53),
                      ),
                      child:
                        Row(
                          children: [
                            Icon (Icons.dehaze_rounded, color: Colors.white,size : 20),
                            SizedBox(width: 10,),
                            Text(
                              "Filtres",
                              style: TextStyle(
                                fontSize:17,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                    ),
                  ],)
                ],
              ),
            ),
          ),
        ),

       // drawer: Drawer(),
      );

    }
  }