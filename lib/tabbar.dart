import 'package:flutter/material.dart';



class tab_Bar extends StatefulWidget {
  const tab_Bar({Key? key}) : super(key: key);

  @override
  _tab_BarState createState() => _tab_BarState();
}

class _tab_BarState extends State<tab_Bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: [
            Tab(text: 'home',),
            Tab(text: 'Profile',),
          ],
        ),
      ),
    );
  }
}
