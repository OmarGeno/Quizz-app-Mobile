import 'package:flutter/material.dart';
import 'package:quizz_app/gradient_container.dart';

void main() {
  runApp(const Quizz());
}

class Quizz extends StatelessWidget {
  const Quizz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuizzApp',
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 50,
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            title: const Text("QuizzApp"),
            bottom: const TabBar(
                labelPadding: EdgeInsets.all(10),
                indicatorColor: Color.fromARGB(255, 255, 255, 255),
                labelColor: Color.fromARGB(255, 255, 255, 255),
                tabs: [
                  Icon(
                    Icons.home_filled,
                  ),
                  // Icon(Icons.wysiwyg),
                  Icon(Icons.checklist_rounded),
                ]),
          ),
          body: const GradientContainer(),
        ),
      ),
    );
  }
}
