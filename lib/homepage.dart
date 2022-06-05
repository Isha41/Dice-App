import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

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
                  flex: 2,
                  child: Image.asset(
                    'assets/dice1.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/dice2.png',
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/dice3.png',
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
