
import 'dart:math';

import 'package:day_4_random_word_assignment/words.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      home: DicePage(),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int word1 = 0;
  int word2 = 0;
  int word3 = 0;

  void genpass() {
    print('Right dicr clicked');
    setState(() {
      word1 =  Random().nextInt(10);
      word2 =  Random().nextInt(10);
      word3 =  Random().nextInt(10);

    });
  }
  Widget build(BuildContext context) {
    String s1 = words[word1];
    String s2 = words[word2];
    String s3 = words[word3];
    return Scaffold(

      appBar: AppBar(
        title: Text('Random Number'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Container(
                         height: 60,
                         width: 300,
                         color: Colors.white,
                         child: FlatButton(

                         child: Text(
                           '$s1 $s2 $s3',
                           style: TextStyle(
                               fontSize: 20,
                               color: Colors.black,

                           ),
                         ),

                   )
                       ),
                       Container(
                         height: 30,
                         width: 200,
                         color: Colors.white,


                       ),

                       Container(
                      height: 60,
                      width: 200,
                    child:   FlatButton(
                       color: Colors.blue,
                      child: Text(
                        'New Password',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white

                        ),
                      ),
                      onPressed: () {
                        genpass();
                      },
                       )

                       )
                     ],
                  ),

                ),

          ],

        ),
      ),

    );
  }
}
List words = Words.list;
// you are given list of words

// Create a stateful widget called `PasswordGenerator` here
