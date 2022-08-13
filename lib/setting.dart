import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting_Page extends StatefulWidget {
  const Setting_Page({Key? key}) : super(key: key);

  @override
  _Setting_PageState createState() => _Setting_PageState();
}

bool isSwitched = false;
bool Switched = false;
bool Switched1 = false;

class _Setting_PageState extends State<Setting_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Setting',
            style: TextStyle(fontWeight: FontWeight.w900, color: Colors.black),
          ),
          actions: [
            Icon(
              Icons.notifications,
              size: 30,
              color: Colors.black,
            ),
            SizedBox(
              width: 14,
            ),
            Image.asset(
              'assest/images/user.png',
              width: 26,
            ),
            SizedBox(
              width: 14,
            ),
          ],
        ),
        body: Container(
          height: 700,
          width: 500,
          margin: EdgeInsets.only(top: 15, left: 20),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'Account',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 125,
                    ),
                    Text(
                      'xyz@gmail.com',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'Passward',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      '*********',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'Deactivate',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'Subscription',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'Basic',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 115,
                    ),
                    Text(
                      '\$20/month',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      'Manage Subscription',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'Notifications',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'Push Notification',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 125,
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Colors.blue,
                      activeColor: Colors.blueAccent,
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'Email Notification',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Switch(
                      value: Switched,
                      onChanged: (value) {
                        setState(() {
                          Switched = value;
                          print(Switched);
                        });
                      },
                      activeTrackColor: Colors.blue,
                      activeColor: Colors.blueAccent,
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'Activity Notification',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 105,
                    ),
                    Switch(
                        value: Switched1,
                        onChanged:(value){
                          setState(() {
                            Switched1 = value;
                            print(Switched1);
                          });
                        },
                        activeTrackColor: Colors.blue,
                      activeColor: Colors.blueAccent,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'More',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'Terms and Conditions',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'Disclaimer',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      'Log Out',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
