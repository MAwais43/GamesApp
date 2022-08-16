import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class detailScreen extends StatefulWidget {

  final String name;
  final String rollNo;
   detailScreen({
     required this.name,
     required this.rollNo,
     Key? key}) : super(key: key);

  @override
  State<detailScreen> createState() => _detailScreenState();
}

class _detailScreenState extends State<detailScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 40.h,
        width: 100.w,
        child: Column(
          children: [
            SizedBox(height: 20.h,),
            Container(
              child: Text(widget.name),
            ),
            Container(
              child: Text(widget.rollNo),
            ),
          ],
        ),
      ),
    );
  }
}
