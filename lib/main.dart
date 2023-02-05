import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = ['question_1', 'question_2'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz Application'),
        backgroundColor: Color(0xFFA90E24),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          offset: Offset(4, 8))
                    ]),
                child: Center(
                  child: Text('The Question'),
                )),
            ElevatedButton(onPressed: null, child: Text('Answer 1')),
            ElevatedButton(onPressed: null, child: Text('Answer 2')),
            ElevatedButton(onPressed: null, child: Text('Answer 3'))
          ],
        ),
      ),
    ));
  }
}
