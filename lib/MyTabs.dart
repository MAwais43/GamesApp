import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget> [
          Container(
            height: 230,
            padding: EdgeInsets.all(20),
            color: Colors.blue,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 140,top: 40),
                  height:100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          'Asset/images/football.png',
                        ),

                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 140),
                  child: Column(
                    children: [

                      Text(

                        "Rao Taha",
                        style: TextStyle(fontSize: 20, color: Colors.white,),
                      ),
                      Divider(
                        height: 5,
                      ),
                      Text(
                        "FiFaLeague.com",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),

          ),
          Divider(
            height: 5,
          ),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(Icons.sports_football,color: Colors.black,),
              title: Text(
                'MATCHES',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.live_tv,color: Colors.black,),
            title: Text(
              'LIVE RESULTS',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),
            ),
          ),
          ListTile(
            leading: Icon(Icons.menu,color: Colors.black,),
            title: Text(
              'STANDINGS',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(Icons.settings,color: Colors.black,),
              title: Text(
                'SETTING',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.notifications,color: Colors.black,),
            title: Text(
              'NOTIFICATIONS',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite,color: Colors.black,),
            title: Text(
              'MY FAVOURITE',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(Icons.man,color: Colors.black,),
              title: Text(
                'GENERAL',
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.contacts_rounded,color: Colors.black,),
            title: Text(
              'ABOUT US',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout,color: Colors.black),
            title: Text(
              'LOG OUT',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),
            ),
          ),
        ],
      ),
    );
  }
}
