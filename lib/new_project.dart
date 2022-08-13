import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class container extends StatefulWidget {
  const container({Key? key}) : super(key: key);

  @override
  _containerState createState() => _containerState();
}

class _containerState extends State<container> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('New Project'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        child: Row(
                      children: [
                        Text(
                          '2312 Results',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
                    Container(
                        child: Row(
                      children: [
                        Text(
                          'Filter',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.filter_alt_sharp,
                        ),
                      ],
                    )),
                    Container(
                        child: Row(
                      children: [
                        Text(
                          'Sort',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.sort,
                        ),
                      ],
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            padding: EdgeInsets.all(3),
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Property Type',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            padding: EdgeInsets.all(3),
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Property Type',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            padding: EdgeInsets.all(3),
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Property Type',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                height: 200,
                width: 355,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 10, left: 10),
                        height: 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assest/images/person.jpg',
                            fit: BoxFit.fitHeight,
                          ),
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 15,bottom: 5,top: 5),
                      margin: EdgeInsets.only(left: 256),
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),topRight: Radius.circular(17)),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Certified',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.check_circle_outline,color: Colors.black,size: 15,)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 165,top: 40),
                      child: Text('Captital Hills Lahore',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 165,top: 62),
                      child: Text('Lahore,Pakistan',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300, color: Colors.black),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 165,top: 85),
                      child: Text('PKR 72 to 76 Lakh',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),maxLines: 1,overflow: TextOverflow.visible,),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 165,top: 110),
                      child: Row(
                        children: [
                          Icon(Icons.bed_outlined,color: Colors.amber,),
                          SizedBox(
                            width: 5,
                          ),
                          Text('2 Bed',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 239,top: 110),
                      child: Row(
                        children: [
                          Icon(Icons.bathroom_outlined,color: Colors.amber,),
                          SizedBox(
                            width: 5,
                          ),
                          Text('2 Bathroom',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 200,top: 150),
                      child: Row(
                        children: [
                          Container(
                            child: ClipRRect(
                              child: Image.asset('assest/images/heart.png',color: Colors.amber,height: 25,),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            child: ClipRRect(
                              child: Image.asset('assest/images/share.png',color: Colors.amber,height: 25,),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            child: ClipRRect(
                              child: Image.asset('assest/images/call.png',color: Colors.amber,height: 25,),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 200,
                width: 355,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 10, left: 10),
                        height: 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assest/images/person.jpg',
                            fit: BoxFit.fitHeight,
                          ),
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 15,bottom: 5,top: 5),
                      margin: EdgeInsets.only(left: 256),
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),topRight: Radius.circular(17)),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Certified',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.check_circle_outline,color: Colors.black,size: 15,)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 165,top: 40),
                      child: Text('Captital Hills Lahore',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 165,top: 62),
                      child: Text('Lahore,Pakistan',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300, color: Colors.black),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 165,top: 85),
                      child: Text('PKR 72 to 76 Lakh',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),maxLines: 1,overflow: TextOverflow.visible,),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 165,top: 110),
                      child: Row(
                        children: [
                          Icon(Icons.bed_outlined,color: Colors.amber,),
                          SizedBox(
                            width: 5,
                          ),
                          Text('2 Bed',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 239,top: 110),
                      child: Row(
                        children: [
                          Icon(Icons.bathroom_outlined,color: Colors.amber,),
                          SizedBox(
                            width: 5,
                          ),
                          Text('2 Bathroom',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 200,top: 150),
                      child: Row(
                        children: [
                          Container(
                            child: ClipRRect(
                              child: Image.asset('assest/images/heart.png',color: Colors.amber,height: 25,),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            child: ClipRRect(
                              child: Image.asset('assest/images/share.png',color: Colors.amber,height: 25,),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            child: ClipRRect(
                              child: Image.asset('assest/images/call.png',color: Colors.amber,height: 25,),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
