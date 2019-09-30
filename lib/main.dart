import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 5;
    var right_dice_number = 1;


    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                leftDiceNumber += 1;


              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                print('right button was pressed');
                right_dice_number +=1;
              },
              child: Image.asset('images/dice$right_dice_number.png'),
            ),
          ),
        ],
      ),
    );
  }
}
