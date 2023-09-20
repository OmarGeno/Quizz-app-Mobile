import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
    const AnswerButton(this.onTap, {super.key, required this.answerText});

  final void Function() onTap;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
          backgroundColor: Colors.black,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40))),
        ),
        onPressed: onTap,
        child: Text(
          answerText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
