import 'package:flutter/material.dart';

class BeforeIncription extends StatefulWidget
{
  const BeforeIncription({Key? key}) : super(key: key);

  @override
  _BeforeIncription_State createState() => _BeforeIncription_State();
}

class _BeforeIncription_State extends State<BeforeIncription>
{
  int indexSelected = 0 ;
  final List<String> StringChoce = <String>["CLIENT","ORGANISATEUR","SOCIETE"];

  InkWell Choosed(int i ,String ch)
  {
     bool tr = StringChoce.indexOf(ch)==1;
     if (indexSelected==StringChoce.indexOf(ch)) {
       return InkWell(
         onTap: () {
         },
         child: Container(
           height: 65,
           padding: EdgeInsets.only(
             left: tr? 35 : 55,
             right: tr? 35 : 55,
             top: 17,
             bottom: 16,
           ),
           decoration:
           new BoxDecoration(
             borderRadius: BorderRadius.circular(13.0),
             gradient: new LinearGradient(
               colors: [Colors.purple, Colors.pink],
               begin: FractionalOffset.centerLeft,
               end: FractionalOffset.centerRight,
             ),
           ),
           child: Text(
             ch,
             style: TextStyle(
               fontSize: tr? 19 : 23,
               color: Colors.white,
             ),
           ),
         ),
       );
     }
     else
       {
         return InkWell(onTap: () {
           setState(() { this.indexSelected = i; });
         },
           child: Container(
             height: 65,
             padding: EdgeInsets.only(
               left: tr? 35 : 55,
               right: tr? 35 : 55,
               top: 17,
               bottom: 16,
             ),
             decoration:
             BoxDecoration(
               border: Border.all(
                   color: Colors.purple,
                   width: 3.0
               ),
               borderRadius: BorderRadius.all(
                   Radius.circular(13.0)
               ),),
             child: Text(
               ch,
               style: TextStyle(
                 fontSize: tr? 19 : 23,
               ),
             ),
           ),);
       }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 10.0,
                  right: 55.0,
                  top: 10,
                  bottom: 16,
                ),
                child: Text(
                  "S'inscrire",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width *0.5,)
            ],
          ),
          Image.asset(
            'assets/SlashScreen/netaLogo.png',
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.2 ,
          ),

          SizedBox(height: 20,),
          ListView.builder(
            itemCount: StringChoce.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 16),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Choosed(index,StringChoce[index]),
                  SizedBox(
                    height: 50,
                  )
                ],
              );
            },
          ),


          InkWell(
            onTap: () {
            },
            child: Container(
              height: 50,
              padding: EdgeInsets.only(
                left: 55.0,
                right: 55.0,
                top: 10,
                bottom: 5,
              ),
              decoration:
              new BoxDecoration(
                borderRadius: BorderRadius.circular(13.0),
                gradient: new LinearGradient(
                  colors: [Colors.purple, Colors.pink],
                  begin: FractionalOffset.centerLeft,
                  end: FractionalOffset.centerRight,
                ),
              ),
              child: Text(
                "VALIDER",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.white,
                ),
              ),
            ),
          ),

        ]),
    );
  }

}