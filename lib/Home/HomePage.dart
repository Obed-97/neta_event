import 'package:flutter/material.dart';
import 'dart:ui';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage_State createState() => _HomePage_State();
}

class _HomePage_State extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
        child: Drawer(
          child: ListView(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Material(
                    color: Colors.black,
                    elevation: 4,
                    shape: CircleBorder(),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                              color: Color.fromARGB(0, 0, 0, 0), width: 2),
                          shape: BoxShape.circle,
                        ),
                        child: Ink.image(
                          image: AssetImage("assets/SlashScreen/netaLogo.png"),
                          height: 61,
                          width: 62,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 1,
                            right: 1), //apply padding to some sides only
                        child: Text(
                          "Sanogo Yaya",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Inter',
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 1,
                            right: 1), //apply padding to some sides only
                        child: Text(
                          "Client ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Inter',
                            color: Color(0xFFBCBCBC),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const ListTile(
                leading: Icon(Icons.person_outline_rounded),
                title: Text('Profile'),
              ),
              const ListTile(
                leading: Icon(Icons.calendar_today_outlined),
                title: Text('Evènements'),
              ),
              const ListTile(
                leading: Icon(Icons.star_border_outlined),
                title: Text('Favoris'),
              ),
              const ListTile(
                leading: Icon(Icons.email_outlined),
                title: Text('Contacter-nous'),
              ),
              const ListTile(
                leading: Icon(Icons.help_outline_outlined),
                title: Text('Aide & FAQs'),
              ),
              const ListTile(
                leading: Icon(Icons.handshake),
                title: Text('Don'),
              ),
              const ListTile(
                leading: Icon(Icons.handshake),
                title: Text('Tontine'),
              ),
              const ListTile(
                leading: Icon(Icons.calendar_today_outlined),
                title: Text('Enquète'),
              ),
              const ListTile(
                leading: Icon(Icons.login_outlined),
                title: Text('Se dèconnecter'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        toolbarHeight:
            MediaQuery.of(context).size.height * 0.19, //set your height
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(
              left: 15.0,
              right: 10.0,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.pink],
                begin: FractionalOffset.centerLeft,
                end: FractionalOffset.centerRight,
              ),
            ), // set your color
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        _key.currentState!.openDrawer();
                      },
                      child: Image.asset(
                        "assets/SlashScreen/menus.png",
                        width: 35,
                        height: 35,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.22,
                    ),
                    Column(
                      children: const [
                        Text(
                          "Hey Bienvenue..",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Sanago Yaya",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            fontFamily: 'Inter',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.23,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(Icons.notifications_none,
                          color: Colors.white, size: 30),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    InkWell(
                      onTap: () {
                        _key.currentState!.openDrawer();
                      },
                      child: const Icon(Icons.search,
                          color: Colors.white, size: 30),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                    Container(
                      height: 22,
                      child: Text(""),
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(color: Colors.blue, width: 2.8),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    const SizedBox(
                      width: 150,
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Recherche...',
                          hintStyle:
                              TextStyle(fontSize: 15.0, color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Container(
                        height: 45,
                        padding: const EdgeInsets.only(
                          left: 30.0,
                          right: 30.0,
                          top: 10,
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Color(0xFF701D53),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/SlashScreen/sort.png",
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Filtres",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Inter',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )),
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
