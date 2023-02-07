import 'package:flutter/material.dart';
import 'widgets/questions_container.dart';
import 'widgets/questions.dart';
import 'widgets/answer_button.dart';

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
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    QuestionsContainer(
                        text: Questions(
                      text: 'Questions',
                    )),
                    Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Column(
                          children: [
                            AnswerButton(
                              onPress: () {
                                print('Button Presssed');
                              },
                              text: 'Answer 1',
                            ),
                            AnswerButton(
                              onPress: () {
                                print('Button Presssed');
                              },
                              text: 'Answer 2',
                            ),
                            AnswerButton(
                              onPress: () {
                                print('Button Presssed');
                              },
                              text: 'Answer 3',
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            )));
  }
}
