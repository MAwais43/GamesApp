import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class player_name extends StatefulWidget {
  const player_name({Key? key}) : super(key: key);

  @override
  _player_nameState createState() => _player_nameState();
}

class _player_nameState extends State<player_name> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 800,
              color: Colors.green,
              child: Column(
                children: [
                  Container(
                      // margin: EdgeInsets.only(top: 100,),
                      height: 90,
                      width: 90,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(70),
                        child: Image.asset(
                          'assest/images/5.jpg',
                          fit: BoxFit.fitHeight,
                        ),
                      )),
                  Divider(
                    height: 15,
                  ),
                  Text(
                    "Name:Astria",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Goals = 5",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          Container (
            height: 100,
            width: 800,
            color: Colors.green,
            child: Column(
              children: [
                Container(
                    // margin: EdgeInsets.only(top: 100,),
                    height: 90,
                    width: 90,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: Image.asset(
                        'assest/images/5.jpg',
                        fit: BoxFit.fitHeight,
                      ),
                    )),
                Divider(
                  height: 15,
                ),
                Text(
                  "Name:Astria",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Goals = 5",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
        
      )
    );
  }
}
