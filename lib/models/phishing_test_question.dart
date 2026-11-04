class PhishingTestQuestion {
  final String message;
  final List<String> options;
  final int correctIndex;
  final String explanation;

  const PhishingTestQuestion({
    required this.message,
    required this.options,
    required this.correctIndex,
    required this.explanation,
  });
}
