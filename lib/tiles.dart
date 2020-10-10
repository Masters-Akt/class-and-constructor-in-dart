import 'package:flutter/material.dart';
import 'package:just_class/calling_constructor.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'dart:convert' as convert;

class Tiles extends StatefulWidget {
  @override
  _TilesState createState() => _TilesState();
}

class _TilesState extends State<Tiles> {
  @override
  void initState() {
    super.initState();
  }

  getHttpData() async {
    http.Response response =
        await http.get('https://jsonplaceholder.typicode.com/photos');
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      //var itemCount = jsonResponse['totalItems'];
      print(jsonResponse[0]["title"]);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  getDioData() async {
    var dio = Dio();
    Response response =
        await dio.get('https://jsonplaceholder.typicode.com/photos');
    print(response.data[0]["title"]);
  }

  ConstList list = ConstList();

  @override
  Widget build(BuildContext context) {
    getDioData();
    return Scaffold(
      body: ListView.builder(
          itemCount: list.student.length,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              title: Text('${list.listName(index)}'),
              subtitle: Text('${list.listRollNo(index)}'),
            );
          }),
    );
  }
}
