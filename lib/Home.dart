import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:students_local_json_26_4_2019/student_model.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  String appName;
  int score;
  Future<String> _loadAStudentAsset() async {
    return await rootBundle.loadString('assets/student.json');
  }

  Future loadStudent() async {
    String jsonString = await _loadAStudentAsset();
    final jsonResponse = json.decode(jsonString);
    Student student = new Student.fromJson(jsonResponse);
    setState(() {
      appName = student.studentName;
      score = student.studentScores;
    });
    print(student.studentName);
  }

  @override
  void initState() {
    super.initState();
    loadStudent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("$appName"),
      ),
      body: new Center(
        child: new Text("$score"),
      ),
    );
  }
}
