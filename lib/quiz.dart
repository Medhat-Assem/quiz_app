import 'package:flutter/material.dart';
import './widgets/answer_button.dart';
import './widgets/questions_container.dart';
import './widgets/questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(
      {super.key,
      required this.questions,
      required this.questionIndex,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Column(
              children: [
                QuestionsContainer(
                    text: Questions(
                  text: questions[questionIndex]['question'],
                )),
                ...(questions[questionIndex]['answers']
                        as List<Map<String, Object>>)
                    .map((answer) => AnswerButton(
                        onPress: () => answerQuestion(answer['score']),
                        text: answer['text']))
                    .toList()
              ],
            )));
  }
}
