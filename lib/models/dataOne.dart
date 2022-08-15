import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/models/dataOne.dart';

class DataModel {
  String name;
  String rollNo;
  String Class;
  String address;

  DataModel({
    required this.name,
    required this.rollNo,
    required this.Class,
    required this.address,
});

}

final data = [
  DataModel(name: 'Ahmad', rollNo: '9', address: 'Sargodha', Class: '10th'),
  DataModel(name: 'jawad', rollNo: '23', address: 'Sargodha', Class: '10th'),
  DataModel(name: 'qasim', rollNo: '33', address: 'Sargodha', Class: '10th'),
  DataModel(name: 'danial', rollNo: '17', address: 'Sargodha', Class: '10th'),
  DataModel(name: 'amna', rollNo: '11', address: 'Sargodha', Class: '10th'),
  DataModel(name: 'taha', rollNo: '77', address: 'Sargodha', Class: '10th'),
  DataModel(name: 'hasan', rollNo: '20', address: 'Sargodha', Class: '10th'),
  DataModel(name: 'saqib', rollNo: '30', address: 'Sargodha', Class: '10th'),

];