import 'package:flutter/material.dart';
import 'package:myapp/GridView.dart';
import 'package:myapp/MyTabs.dart';
import 'package:myapp/myClass.dart';
import 'package:myapp/player.dart';
import 'package:sizer/sizer.dart';

class bottombar extends StatefulWidget {
  const bottombar({Key? key}) : super(key: key);

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int currenttab = 1;
  final PageStorageBucket bucket = PageStorageBucket();



  final List<Widget> screens = [
    myclass(),
    gridView(),
    MainDrawer(),
    player_name(),
  ];

  Widget currentScreen = myclass();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageStorage(
          bucket: bucket,
          child: currentScreen,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(
              Icons.search
          ),
          backgroundColor: Colors.grey,

        ),
        // IconButton(
        //   onPressed: (){},
        //   icon: Icon(Icons.search),
        // ),
        // destination screen
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = myclass();
                          currenttab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dashboard,
                            color:
                            currenttab == 0 ? Colors.amberAccent : Colors.grey,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                              color:
                              currenttab == 0 ? Colors.amber : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = gridView();
                          currenttab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_card_sharp,
                            color:
                            currenttab == 1 ? Colors.grey : Colors.grey,
                          ),
                          Text(
                            'Adds',
                            style: TextStyle(
                              color:
                              currenttab == 1 ? Colors.amberAccent: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                // Container(
                //   height: 13.h,
                //   width: 12.w,
                //   margin: EdgeInsets.only(bottom: 5.sp),
                //   child: FloatingActionButton(
                //     onPressed: () {
                //
                //     },
                //     child: Icon(
                //       Icons.search,
                //     ),
                //     backgroundColor: kprimarycolor,
                //   ),
                // ),
                // SizedBox(
                //   width: 20.sp,
                // ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      padding: EdgeInsets.only(left: 16.sp),
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = player_name();
                          currenttab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dashboard,
                            color:
                            currenttab == 2 ? Colors.amber : Colors.grey,
                          ),
                          Text(
                            'Projects',
                            style: TextStyle(
                              color:
                              currenttab == 2 ? Colors.amber: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5.sp,
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = MainDrawer();
                          currenttab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_card_sharp,
                            color:
                            currenttab == 3 ? Colors.amber : Colors.grey,
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(
                              color:
                              currenttab == 3 ? Colors.amber : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
