import 'package:flutter/material.dart';
import 'package:quizz_app/quizz_data.dart';
import 'package:quizz_app/answer_button.dart';

class QestionsScreen extends StatefulWidget {
  const QestionsScreen({required this.onSelectAnswer, super.key});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QestionsScreen> createState() => _QestionsScreenState();
}

class _QestionsScreenState extends State<QestionsScreen> {
  var currentIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);

    setState(() {
      currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.shuffledAnswers().map((answer) {
              return Container(
                margin: const EdgeInsets.all(10),
                child: AnswerButton(() {
                  answerQuestion(answer);
                }, answerText: answer),
              );
            }),
          ],
        ),
      ),
    );
  }
}
