import 'package:diceapp/nextpage.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int leftDice = 1;

  int rightDice = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Dice',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    //Anonymous Function
                    onTap: () {
                      setState(() {
                        var rng = Random();
                        leftDice = rng.nextInt(6) + 1;
                      });
                      print(leftDice);
                    },
                    child: Image.asset(
                      'assets/dice$leftDice.png',
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    //Anonymous Function
                    onTap: () {
                      setState(() {
                        var rng = Random();
                        rightDice = rng.nextInt(6) + 1;
                      });
                      print(rightDice);
                    },
                    child: Image.asset(
                      'assets/dice$rightDice.png',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NextPage()));
              },
              child: Text(
                "NEXT:Ask Me",
                style: TextStyle(color: Colors.white),
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                  width: 2,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
