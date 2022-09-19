import 'package:flutter/material.dart';

import '../Home/HomePage.dart';


class Profil extends StatefulWidget {

  Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Profile"),
        leading: IconButton(icon: Icon(Icons.arrow_back), color: Colors.black, onPressed: () => Navigator.of(context).pop(),),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              color: Colors.white
          ),
        ),
      ),
      body: Column(children: [

        SizedBox(height: 50,),
        Center(
          child: Material(
            color: Colors.black,
            elevation: 0,
            shape: CircleBorder(),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              splashColor: Colors.black26,
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                      color: Color.fromARGB(0, 0, 0, 0), width: 0),
                  shape: BoxShape.circle,
                ),
                child: Ink.image(
                  image: AssetImage("assets/SlashScreen/saidou.jpg"),
                  height: 110,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        const Center(
          child:  Text("Hamadoun Yara",
            style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          ),
        ),

          Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width *0.35,),
              Column(children: [
                Text("420",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text("Ticket",
                  style: TextStyle(
                    fontSize: 15,
                    color:Color(0xFF747688),
                  ),
                ),
              ],),
              SizedBox(width: 10,),
              SizedBox(width: 10,),
              Column(children: [
                Text("1800",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text("Spent",
                  style: TextStyle(
                    fontSize: 15,
                      color:Color(0xFF747688)
                  ),
                ),
              ],),
            ],
          ),
        SizedBox(height: 25,),

      Center(
      child: InkWell(
        onTap: () {
          print(" go to edit ");
        },
        child: Container(
          width: 150,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              gradient:
              new LinearGradient(
                colors: [Colors.purple, Colors.pink],
                begin: FractionalOffset.centerLeft,
                end: FractionalOffset.centerRight,
              ),
          ),
          child: Container(
            width: 145,
            height: 58,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
            ),
            alignment: Alignment.center,
            child: Row(
              children: [
                SizedBox(width: 5,),
                GradientIcon(Icons.mode_edit_outline_outlined ,25),
                SizedBox(width: 10,),
                GradientText("Editer Profile",
                  style : TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),

        SizedBox(height: 25,),

           SizedBox(
             width: MediaQuery.of(context).size.width *0.9,
             child: Container(
               width: MediaQuery.of(context).size.width *0.9,
               child: Text(
                 "Ayoh... Garde tes données en sécurité, vous pouvez les changer à tout moment",
                 style:  TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.black),
                 softWrap: true,
                 maxLines: 3,
               ),
             ),
           ),
        SizedBox(height: 25,),
           Container(
            width: MediaQuery.of(context).size.width *0.75,
            child:
             Row(
               children: [
                 Icon(Icons.person_outline , color: Colors.grey,),
                 SizedBox(width: 10,),
                 Text(
                   "Saido neta-event",
                   style:  TextStyle(fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.black),
                   softWrap: true,
                   maxLines: 3,
                 ),
               ],
             ),
          ),
        SizedBox(height: 10,),
        Container(
          width: MediaQuery.of(context).size.width *0.75,
          child:
          Row(
            children: [
              Icon(Icons.email_outlined , color: Colors.grey,),
              SizedBox(width: 10,),
              Text(
                "abc@email.com",
                style:  TextStyle(fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.black),
                softWrap: true,
                maxLines: 3,
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: MediaQuery.of(context).size.width *0.75,
          child:
          Row(
            children: [
              Icon(Icons.location_on , color: Colors.grey,),
              SizedBox(width: 10,),
              Text(
                "Lorem espium antonicu pirium",
                style:  TextStyle(fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.black),
                softWrap: true,
                maxLines: 3,
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: MediaQuery.of(context).size.width *0.75,
          child:
          Row(
            children: [
              Icon(Icons.message_outlined , color: Colors.grey,),
              SizedBox(width: 10,),
              Text(
                "+999 99 999 999 9",
                style:  TextStyle(fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.black),
                softWrap: true,
                maxLines: 3,
              ),
            ],
          ),
        ),
      ],),
    );
  }


}

















