import 'package:flutter/material.dart';
import 'package:quizz_app/quizz_screen.dart';
import 'package:quizz_app/start_screen.dart';
import 'package:quizz_app/quizz_data.dart';
import 'package:quizz_app/quizz_answers.dart';


class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key});

  @override
  State<GradientContainer> createState() {
    // ignore: no_logic_in_create_state
    return _GradientContainerState(colors: const [
      Colors.white,
      Color.fromRGBO(66, 23, 149, 1),
      Colors.white
    ]);
  }
}

class _GradientContainerState extends State<GradientContainer> {
  _GradientContainerState(
      {required this.colors,});
  List<Color> colors;
  late List<String> selectedAnswers = [];
  

  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "quizz-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "result-screen";
      });
        // selectedAnswers = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = activeScreen == "start-screen"
        ? StartScreen(switchScreen)
        : QestionsScreen(onSelectAnswer: chooseAnswer);
    if (activeScreen == 'result-screen') {
      screenWidget = QuizzAnswers(
        chosenAnswers: selectedAnswers,
        restartQuizz: switchScreen,
      );
    }

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: screenWidget,
    );
  }
}
