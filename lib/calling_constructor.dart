import 'construct.dart';

class ConstList{
  String name;
  int rollNo;

  listName(int tileNo){
    return student[tileNo].name;
  }

  listRollNo(int tileNo){
    return student[tileNo].rollNo;
  }

  List student=[
    Constructor("akt1", 111),
    Constructor("akt2", 222),
    Constructor("akt3", 333),
    Constructor("akt4", 444),
    Constructor("akt5", 555),
    Constructor("akt6", 666),
    Constructor("akt7", 777),
  ];
}