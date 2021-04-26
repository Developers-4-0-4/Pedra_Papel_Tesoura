import 'package:flutter/material.dart';

class fim extends StatefulWidget {
  @override
  _fimState createState() => _fimState();
}

class _fimState extends State<fim> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: Text("Obrigado por ter usado o App Pedra, Papel e Tesoura",
                style:TextStyle(fontSize: 20) ,),),
              Center(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Container(child: Image(image: AssetImage('images/1.png'),),),
                    Container(child: Image(image: AssetImage('images/2.png'),),),
                    Container(child: Image(image: AssetImage('images/3.png'),),),
                  ],),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
