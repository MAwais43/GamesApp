import 'package:flutter/material.dart';
import 'package:myapp/detailScreen.dart';
import 'package:sizer/sizer.dart';
import 'package:myapp/models/dataOne.dart';

class myclass extends StatefulWidget {
  const myclass({Key? key}) : super(key: key);

  @override
  State<myclass> createState() => _myclassState();
}

class _myclassState extends State<myclass> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 100.h,
        width: 100.w,
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> detailScreen(name: data[index].name, rollNo: data[index].rollNo,)));
                },
                child: Container(
                  height: 20.h,
                  // color: Colors.amberAccent,
                  decoration: BoxDecoration(
                    color: Color(0xffc4c977),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          child: Text(data[index].name.toString()),
                        ),
                        Container(
                          child: Text(data[index].rollNo),
                        ),
                        Container(
                          child: Text(data[index].Class),
                        ),
                        Container(
                          child: Text(data[index].address),
                        )
                      ],
                    ),
                      // child: Text(data[index].name)
                  ),
                ),
              );
            }
        ),
        
      ),
    );
  }
}
