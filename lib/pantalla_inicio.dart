import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prueba_dos/auth/pantalla_login.dart';


void main() {
  runApp(Pantalla_Inicio());
}

class Pantalla_Inicio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<Pantalla_Inicio> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 1);
    return new Timer(duration, route);
    
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Pantalla_login()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 139, 204, 114),
                gradient: LinearGradient(colors: [
                  (Color.fromARGB(255, 251, 236, 249)),
                  Color.fromARGB(255, 182, 97, 41)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Center(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('../images/LOGO.png'),
                Text("BIENVENIDOS PRODUCT INVENTORY",style: TextStyle(fontSize: 50,),)
              
              ]
            ),
            
          )
        ],
      ),
    );
  }
}