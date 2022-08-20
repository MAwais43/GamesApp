import 'package:flutter/material.dart';
import 'package:myapp/bottombar.dart';
import 'package:myapp/myClass.dart';
import 'package:sizer/sizer.dart';
import 'GridView.dart';
import 'MyTabs.dart';
import 'player.dart';
import 'setting.dart';
import 'new_project.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: bottombar(),
      );
    });
  }
}

class mybody extends StatelessWidget {
  const mybody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FootBall'),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Setting_Page()));
            },
          ),
          Icon(
            Icons.settings,
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: Container(
        height: 550,
        width: 400,
        child: Column(
          children: [
            Container(
              height: 150,
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => container()));
                          },
                          child: Container(
                            height: 80,
                            width: 60,
                            child: Image.asset(
                              'assest/images/1.png',
                              // fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text('Real Madrid'),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 150,
                          child: Column(
                            children: [
                              Divider(
                                height: 10,
                              ),
                              Text(
                                "28-07-2022",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              Divider(
                                height: 4,
                              ),
                              Text(
                                " 1 - 0",
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Match Continue",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              Divider(
                                height: 4,
                              ),
                              Text(
                                "53:00",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => gridView()));
                          },
                          child: Container(
                            height: 80,
                            width: 60,
                            child: Image.asset(
                              'assest/images/2.png',
                              //fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text('Barcelona'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.green,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Astria",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Divider(
                          height: 4,
                        ),
                        Text(
                          "Live",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Divider(
                          height: 3,
                        ),
                        Text(
                          "0-0",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Netherland",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.green,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "France",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Divider(
                          height: 4,
                        ),
                        Text(
                          "2 Days to go!",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Divider(
                          height: 3,
                        ),
                        Text(
                          "0-0",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "UN",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.green,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Portaugal",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Divider(
                          height: 4,
                        ),
                        Text(
                          "3 Days to go!",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Divider(
                          height: 3,
                        ),
                        Text(
                          "0-0",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Primeria",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.green,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Germany",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Divider(
                          height: 4,
                        ),
                        Text(
                          "5 Days to go!",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Divider(
                          height: 3,
                        ),
                        Text(
                          "0-0",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Bundslga",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.green,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Segunda",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Divider(
                          height: 4,
                        ),
                        Text(
                          "6 Days to go!",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Divider(
                          height: 3,
                        ),
                        Text(
                          "0-0",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Spain",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.green,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Qualifier 1",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Divider(
                          height: 4,
                        ),
                        Text(
                          "10 Days to go!",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                        Divider(
                          height: 3,
                        ),
                        Text(
                          "0-0",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Qualifier 2",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 900,
          width: 400,
          color: Colors.green,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/3.jpg',
                                fit: BoxFit.fitHeight,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Karim'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/4.jpg',
                                fit: BoxFit.fitHeight,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Edon'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/5.jpg',
                                fit: BoxFit.fitHeight,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Vini .Jr'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/6.jpg',
                                fit: BoxFit.fitWidth,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Antonio'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/7.jpg',
                                fit: BoxFit.fitHeight,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Aurelien'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/8.jpg',
                                fit: BoxFit.fitHeight,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Luka'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/9.jpg',
                                fit: BoxFit.fitHeight,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Rodrygo'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/10.jpg',
                                fit: BoxFit.fitHeight,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Ronaldo'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/11.jpg',
                                fit: BoxFit.fitHeight,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Fifa'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/12.jpg',
                                fit: BoxFit.fitWidth,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Thibaut'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/13.jpg',
                                fit: BoxFit.fitHeight,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 55),
                          child: Text('Toni'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 900,
          width: 400,
          color: Colors.green,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/person.jpg',
                                fit: BoxFit.fitWidth,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Real'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/person.jpg',
                                fit: BoxFit.fitWidth,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Real'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/person.jpg',
                                fit: BoxFit.fitWidth,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Real'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/person.jpg',
                                fit: BoxFit.fitWidth,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Real'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/person.jpg',
                                fit: BoxFit.fitWidth,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Real'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/person.jpg',
                                fit: BoxFit.fitWidth,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Real'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/person.jpg',
                                fit: BoxFit.fitWidth,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Real'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/person.jpg',
                                fit: BoxFit.fitWidth,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Real'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/person.jpg',
                                fit: BoxFit.fitWidth,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Real'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/person.jpg',
                                fit: BoxFit.fitWidth,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Text('Real'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.asset(
                                'assest/images/person.jpg',
                                fit: BoxFit.fitWidth,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 55),
                          child: Text('Real'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class ListTitle extends StatelessWidget {
  const ListTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('Football'),
        ),
        body: Container(
          child: ListView(
            children: [
              MyListTile('7 :40', 'assest/images/person.jpg', '1st', '2nd'),
              MyListTile('7 :42', 'assest/images/taha.jpg', '3st', '4nth'),
              MyListTile('7 :43', 'assest/images/9.jpg', '5th', '6th'),
              MyListTile('7 :44', 'assest/images/11.jpg', '7th', '8th'),
              MyListTile('7 :45', 'assest/images/3.jpg', '9th', '10th'),
              MyListTile('7 :46', 'assest/images/4.jpg', '11th', '12th'),
              MyListTile('7 :47', 'assest/images/6.jpg', '13th', '14th'),
              MyListTile('7 :47', 'assest/images/5.jpg', '15th', '16th'),
              MyListTile('7 :48', 'assest/images/7.jpg', '17th', '18th'),
            ],
          ),
        ));
  }

  Widget MyListTile(String time, String image, String title, String subtitle) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      //trailing:(time),
      onTap: () {},
      onLongPress: () {},
    );
  }
}
