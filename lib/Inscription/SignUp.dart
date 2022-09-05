import 'package:flutter/material.dart';

import '../Model/User.dart';

class SignUp extends StatefulWidget
{
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp>
{
  bool password1 = true ;
  bool password2 = true ;
  String ConfirmePassword="";
  late User user = User(email: '', password: '', name: '');


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.pink],
              begin: FractionalOffset.centerLeft,
              end: FractionalOffset.centerRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
    child: Column(children: [
      SizedBox(height: 10,),
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
      SizedBox(height: 25,),
      Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width *0.9,
          child: TextField(

            cursorHeight: 20,
            autofocus: false,
            controller: TextEditingController(text: user.name),
            onChanged: (value) {
              user.name = value;
            },
            decoration: InputDecoration(
              labelText: 'Enter your username',
              labelStyle: TextStyle(
                color: Colors.black54,
              ),
              hintText: "Enter your Name",
              prefixIcon: Icon(Icons.person , color: Colors.grey,),
              // suffixIcon: Icon(Icons.keyboard_arrow_down), end of the Input Field
              contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.grey, width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.grey, width: 1.5),
              ),
              focusedBorder: OutlineInputBorder(
                gapPadding: 0.0,
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.purple, width: 1.5),
              ),
            ),
          ),
        ),
      ),

      SizedBox(height: 25,),
      Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width *0.9,
          child: TextField(
            cursorHeight: 20,
            autofocus: false,
            controller: TextEditingController(text: user.email),
            onChanged: (value) {
              user.email = value;
            },
            decoration: InputDecoration(
              labelText: 'Enter your Email',
              labelStyle: TextStyle(
                color: Colors.black54,
              ),
              hintText: "Enter your Email",
              prefixIcon: Icon(Icons.mail_outline_outlined , color: Colors.grey,),
              // suffixIcon: Icon(Icons.keyboard_arrow_down), end of the Input Field
              contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.grey, width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.grey, width: 1.5),
              ),
              focusedBorder: OutlineInputBorder(
                gapPadding: 0.0,
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.purple, width: 1.5),
              ),
            ),
          ),
        ),
      ),
       //suffixIcon: Icon(Icons.keyboard_arrow_down),
      SizedBox(height: 25,),
      Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width *0.9,
          child: TextField(
            obscureText: password1, // hide letters
            cursorHeight: 20,
            autofocus: false,
            controller: TextEditingController(text: user.password),
            onChanged: (value) {
              user.password = value;
            },            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(
                color: Colors.black54,
              ),
              hintText: "Enter your Password",
              prefixIcon: Icon(Icons.lock_outline , color: Colors.grey,),
              suffixIcon: InkWell(
                  onTap: ()
                  {
                    setState(() { this.password1 = !this.password1 ; });
                  },
                  child: password1 ? Icon(Icons.visibility_off_rounded , color: Colors.grey,) : Icon(Icons.visibility_rounded , color: Colors.grey,) //Icon(Icons.visibility_rounded , color: Colors.grey,), //visibility_off_rounded
              ),
              // suffixIcon: Icon(Icons.keyboard_arrow_down), end of the Input Field
              contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.grey, width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.grey, width: 1.5),
              ),
              focusedBorder: OutlineInputBorder(
                gapPadding: 0.0,
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.purple, width: 1.5),
              ),
            ),
          ),
        ),
      ),

      SizedBox(height: 25,),
      Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width *0.9,
          child: TextField(
            obscureText: password2, // hide letters
            cursorHeight: 20,
            autofocus: false,
            controller: TextEditingController(text: ConfirmePassword),
            onChanged: (value) {
              ConfirmePassword = value;
            },            decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: TextStyle(
              color: Colors.black54,
            ),
            hintText: "Enter your Password",
            prefixIcon: Icon(Icons.lock_outline , color: Colors.grey,),
            suffixIcon: InkWell(
                onTap: ()
                {
                  setState(() { this.password2 = !this.password2 ; });
                },
                child: password2 ? Icon(Icons.visibility_off_rounded , color: Colors.grey,) : Icon(Icons.visibility_rounded , color: Colors.grey,) //Icon(Icons.visibility_rounded , color: Colors.grey,), //visibility_off_rounded
            ),
            // suffixIcon: Icon(Icons.keyboard_arrow_down), end of the Input Field
            contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.grey, width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              gapPadding: 0.0,
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.purple, width: 1.5),
            ),
          ),
          ),
        ),
      ),
      SizedBox(height: 30,),
      InkWell(
        onTap: () {
        },
        child: Container(
          height: 60,
          padding: EdgeInsets.only(
            left: 55.0,
            right: 55.0,
            top: 15,
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
            "S'INSCRIRE",
            style: TextStyle(
              fontSize: 23,
              color: Colors.white,
            ),
          ),
        ),
      ),
      SizedBox(height: 40,),
      Center(child:
        Text("OU",
          style: TextStyle(
          fontSize: 18,
          color: Colors.grey,
        ),
        ),),
      SizedBox(height: 20,),
      Center(child:SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: InkWell(
          onTap: () {
          },
          child: Container(
              height: 60,
              padding: EdgeInsets.only(
                left: 10.0,
                right: 10.0,
                top: 10,
                bottom: 5,
              ),
              decoration:
              new BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 2),
                    blurRadius: 10.0,
                    spreadRadius: 2.5,
                  )
                ],
                borderRadius: BorderRadius.circular(13.0),
              ),

              child:Row(children: [
                Image.asset(
                  'assets/SlashScreen/google.png',
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.height * 0.1 ,
                  //scale: 0.1,
                ),
                Text(
                  "Se conncter avec Google",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ],)
          ),
        ),
      ),),
      SizedBox(height: 10,),
      Center(child:SizedBox(
        width: MediaQuery.of(context).size.width * 0.72,
        child: InkWell(
          onTap: () {
          },
          child: Container(
              height: 60,
              padding: EdgeInsets.only(
                left: 10.0,
                right: 10.0,
                top: 10,
                bottom: 5,
              ),
              decoration:
              new BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 2),
                    blurRadius: 10.0,
                    spreadRadius: 2.5,
                  )
                ],
                borderRadius: BorderRadius.circular(13.0),
              ),

              child:Row(children: [
                Image.asset(
                  'assets/SlashScreen/Facebook.png',
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.height * 0.1 ,
                  //scale: 0.1,
                ),
                Text(
                  " Se conncter avec Facebook",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ],)
          ),
        ),
      ),),
      SizedBox(height: 10,),
           SizedBox(child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center ,//Center Row contents horizontally,
            crossAxisAlignment: CrossAxisAlignment.center ,//Center Row contents vertically,
            children: [
            Text(
              " Vous avez déja un compte",
              style: TextStyle(
                fontSize: 13,
                color: Colors.black,
              ),
            ),
            InkWell(
              onTap: () {
                print('dvds');
              },
              child: Text(
                " Signin",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.pink,
                ),
              ),
            ),
          ],) ,
          ),
      SizedBox(height: 50,),

    ],),),
    );
  }
}