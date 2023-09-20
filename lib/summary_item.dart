import 'package:flutter/material.dart';
import 'package:quizz_app/question_idetifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.data, {super.key});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = data['user_answer'] == data['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: (data['question_index'] as int),
        ),
        const SizedBox(
          width: 15,
          height: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${data['question']}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "${data['correct_answer']}",
                style: const TextStyle(
                  color: Color.fromARGB(255, 171, 252, 207),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text("${data['user_answer']}",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 27, 27),
                  )),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
