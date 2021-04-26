import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(title: Text("PEDRA PAPEL TESOURA", style: TextStyle(fontSize: 20),),),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Text("Bem-vindo ao App Pedra Papel Tesoura", style: TextStyle(fontSize: 20, letterSpacing: 5),),),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Image(image: AssetImage('images/imagem1.png'),),
              ),
              Container(
                width: 200.00,
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      Navigator.pushNamed(context, '/jogar');
                    });
                  },
                  child: Text("Jogar"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
