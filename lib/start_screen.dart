import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StartScreen extends StatelessWidget {
  StartScreen(this.startQuiz, {super.key});

  var title = 'Learn Volleybal the fun way!';
  var btnTitle = "Start Quiz";
  var homeImage = 'assets/quiz-logo.png';

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              homeImage,
              width: 200,
              color: const Color.fromARGB(149, 255, 255, 255),
            ),
          ),
          const SizedBox(height: 40),
          Center(
              child: Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              color: Colors.white,
            ),
          )),
          const SizedBox(height: 20),
          Center(
              child: TextButton(
                  onPressed: startQuiz,
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
                    backgroundColor: Colors.black,
                  ),
                  child: Text(btnTitle,
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      )))),
          const SizedBox(height: 20),
        ],
      );
}
