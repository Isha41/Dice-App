import 'package:flutter/material.dart';

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
                        leftDice = 5;
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
                      rightDice = 6;
                      print(rightDice);
                    },
                    child: Image.asset(
                      'assets/dice$rightDice.png',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
