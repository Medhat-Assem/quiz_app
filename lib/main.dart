import 'package:flutter/material.dart';
import 'widgets/questions_container.dart';
import 'widgets/questions.dart';

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
        title: const Text('Quiz Application'),
        backgroundColor: const Color(0xFFA90E24),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            QuestionsContainer(
                text: Questions(
              text: 'Questions',
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
