import 'package:flutter/material.dart';
import 'dart:math';
class jogar extends StatefulWidget {
  @override
  _jogarState createState() => _jogarState();
}

class _jogarState extends State<jogar> {
  var appselect=0,texnumero=0;
  var pedra=false, papel=false, tesoura=false;
  var jogada= [1,2,3], texto="Escolha uma opção abaixo";
  void Escolha_App(){
    setState(() {
      if(papel){
          appselect= Random().nextInt(3) +1;
          if(appselect==2)
            texto="Você venceu";
          else if(appselect==3)
            texto= "Você perdeu";
          else
            texto="Empate";
      }
      if(pedra){
        appselect= Random().nextInt(3) +1;
        if(appselect==1)
          texto="Você perdeu";
        else if(appselect==2)
          texto= "Empate";
        else
          texto="Você venceu";
      }
      if(tesoura){
        appselect= Random().nextInt(3) +1;
        if(appselect==1)
          texto="Você Venceu";
        else if(appselect==2)
          texto= "Você Perdeu";
        else
          texto="Empate";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title:
              TextButton( onPressed: (){
                Navigator.pushNamed(context, '/fim');
              },
                child: Icon(Icons.highlight_off),)),
              backgroundColor: Colors.black12,
          body: Center(
            child: Column(
              children: [
                Container(child: Text("Escolha do App",
                  style: TextStyle(fontSize: 18),),
                  margin: EdgeInsets.fromLTRB(0, 5, 0, 5),),
                Container(child: Image(image: AssetImage('images/${appselect}.png'), height: 200,),),
                Container(child: Text("${texto}", style: TextStyle(fontSize: 18),),),
                Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(child: TextButton(
                          onPressed: (){
                            setState(() {
                              papel=true;
                            });
                            Escolha_App();
                          },
                          child: Image(image: AssetImage('images/${jogada[0]}.png'),
                           ),
                          ),
                        ),
                        Container(child: TextButton(
                          onPressed: (){setState(() {
                            pedra=true;
                          });
                          Escolha_App();
                          },
                          child: Image(image: AssetImage('images/${jogada[1]}.png'),
                          ),
                        ),
                        ),
                        Container(child: TextButton(
                          onPressed: (){
                            setState(() {
                              tesoura=true;
                            });
                            Escolha_App();
                          },
                          child: Image(image: AssetImage('images/${jogada[2]}.png'),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                            Icon(Icons.restore)
                ],),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
