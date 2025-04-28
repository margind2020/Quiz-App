class QuizQuestions {
  const QuizQuestions(this.question, this.options);
  final String question;
  final List<String> options;
  List<String>  ShuffledOptions () {
    final shuffledlist = List.of(options);
    shuffledlist.shuffle();
    return shuffledlist;
  }
}