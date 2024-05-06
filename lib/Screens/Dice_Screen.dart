import 'package:flutter/material.dart';
import 'dart:math';


class DiceScreen extends StatefulWidget {
   DiceScreen({super.key});
 

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
   
 var DiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 130.0),
            child: Text("Dice",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),),
          ),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Row(mainAxisAlignment:MainAxisAlignment.center,
            children: [
            Container(
              height: 150,
              width: 150,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.green
                ),
                onPressed: (){
                  setState(() {
                     print("$DiceNumber");
                  DiceNumber = Random().nextInt(6);
                  });
                 
                },
              
               child:Image.asset('assets/dice$DiceNumber.png')
               
               )
                ),
            
          ],)
        
        ,),
      ),
    );
  }
}
