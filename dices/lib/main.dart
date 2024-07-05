
import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(const Dices());
}
class Dices extends StatefulWidget {
  const Dices({super.key});

  @override
  State<Dices> createState() => _DicesState();
}

class _DicesState extends State<Dices> {
  int rndNumber =1;
  int lndNumber=1;
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.redAccent,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(
              child: Text('Dices',style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          body: Center(
            child: Row(
              children: [
                  Expanded(child:TextButton(
                    onPressed: (){
                      setState(() {
                        rndNumber=Random().nextInt(6)+1;
                        lndNumber=Random().nextInt(6)+1;
                      });
                    },
                      child: Image.asset('images/dice$rndNumber.png',width: 150.0,)),
                  ),
                Expanded(child: TextButton(
                    onPressed: (){
                      setState(() {
                        rndNumber=Random().nextInt(6)+1;
                        lndNumber=Random().nextInt(6)+1;
                      });

                    },
                  child:Image.asset('images/dice$lndNumber.png',width: 150.0,)
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
