import 'package:flutter/material.dart';

class gridView extends StatefulWidget {
  const gridView({Key? key}) : super(key: key);

  @override
  _gridViewState createState() => _gridViewState();
}

class _gridViewState extends State<gridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GridView'),
        ),
      body: GridView.count(
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        crossAxisCount: 2,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home,color: Colors.white,size: 50,),
                Text('Home',style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w900
                ),)
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.red,
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.account_balance_outlined,color: Colors.white,size: 50,),
                Text('Bank',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w900
                ),)
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.green,
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.settings,color: Colors.white,size: 50,),
                Text('Stting',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w900
                ),)
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.blue,
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.contacts,color: Colors.white,size: 50,),
                Text('Contact Us',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w900
                ),)
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey,
            ),
          ),

          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.message,color: Colors.white,size: 50,),
                Text('Message',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w900
                ),)
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.lightBlueAccent,
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_city,color: Colors.white,size: 50,),
                Text('City',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w900
                ),)
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.deepOrangeAccent,
            ),
          ),

          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.transfer_within_a_station_outlined,color: Colors.white,size: 50,),
                Text('Health',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w900
                ),)
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.deepPurpleAccent,
            ),
          ),

          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.logout,color: Colors.white,size: 50,),
                Text('Log Out ',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w900
                ),)
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.orangeAccent,
            ),
          ),
        ],
      ),
    );
  }
}
