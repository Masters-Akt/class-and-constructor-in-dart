import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:just_class/calling_constructor.dart';

class Tiles extends StatefulWidget{
  @override
  _TilesState createState() => _TilesState();
}

class _TilesState extends State<Tiles>{
  ConstList list = ConstList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list.student.length,
        itemBuilder: (BuildContext context, index){
          return ListTile(
            title: Text('${list.listName(index)}'), 
            subtitle: Text('${list.listRollNo(index)}'),
            );
        }),
    );
  }
}