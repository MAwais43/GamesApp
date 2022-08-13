import 'package:flutter/material.dart';

class stack extends StatelessWidget {
  const stack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.red,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}