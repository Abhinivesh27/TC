import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  final text = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          leading: Container(
            padding: const EdgeInsets.only(left: 10),
            child: CircleAvatar(
              child: Icon(
                Icons.person,
                size: 30,
              ),
            ),
          ),
          title: Center(
            child: Text("Tamil CTF"),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CourseCard(text: "C\nProgramming"),
                  CourseCard(text: "Python\nProgramming"),
                  CourseCard(text: "R\nProgramming"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CourseCard(text: "C\nProgramming"),
                  CourseCard(text: "Python\nProgramming"),
                  CourseCard(text: "R\nProgramming"),
                ],
              ),
            ],
          ),
        ));
  }
}

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: RaisedButton(
          onPressed: () {},
          splashColor: Colors.blue.shade50,
          hoverColor: Colors.blue.shade900,
          hoverElevation: 40,
          elevation: 5.0,
          color: Colors.blueAccent.shade400,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.white24,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )),
    );
  }
}
