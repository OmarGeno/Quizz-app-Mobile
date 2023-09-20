class QuizzQuestions {
  const QuizzQuestions(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> shuffledAnswers() {
    final clonedList = List.of(answers);
    clonedList.shuffle();
    return clonedList;
  }

}
