import 'package:flutter/material.dart';
import 'package:quizz_app/quizz_data.dart';
import 'package:quizz_app/summary_data.dart';

// ignore: must_be_immutable
class QuizzAnswers extends StatelessWidget {
  const QuizzAnswers(
      {super.key, required this.chosenAnswers, required this.restartQuizz});

  final void Function() restartQuizz;
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numbCorrectQuestions = [
      getSummaryData().map((e) => e['correct_answer']),
    ];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.fromLTRB(40, 2 , 40, 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered ${numbCorrectQuestions.length} out of ${questions.length} questions correctly!',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            SummaryData(getSummaryData()),
            const SizedBox(height: 30),
            TextButton(
              onPressed: restartQuizz,
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
              ),
              child: const Text("Restart Quiz",
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
