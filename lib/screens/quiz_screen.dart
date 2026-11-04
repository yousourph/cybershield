import 'package:flutter/material.dart';
import '../data/quiz_questions.dart';
import '../models/quiz_question.dart';
import '../theme/app_colors.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestion = 0;
  int score = 0;
  int? selectedAnswer;
  bool quizFinished = false;

  void selectAnswer(int index) {
    if (selectedAnswer != null) return;

    setState(() {
      selectedAnswer = index;

      if (index == quizQuestions[currentQuestion].correctIndex) {
        score++;
      }
    });
  }

  void nextQuestion() {
    if (currentQuestion < quizQuestions.length - 1) {
      setState(() {
        currentQuestion++;
        selectedAnswer = null;
      });
    } else {
      setState(() {
        quizFinished = true;
      });
    }
  }

  void restartQuiz() {
    setState(() {
      currentQuestion = 0;
      score = 0;
      selectedAnswer = null;
      quizFinished = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Text(
          'Cybersecurity Quiz',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: quizFinished ? buildResults() : buildQuestion(),
      ),
    );
  }

  Widget buildQuestion() {
    final question = quizQuestions[currentQuestion];
    final progress = (currentQuestion + 1) / quizQuestions.length;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'TEST YOUR KNOWLEDGE',
                style: TextStyle(
                  color: greenColor,
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              Text(
                '${currentQuestion + 1}/${quizQuestions.length}',
                style: const TextStyle(
                  color: mutedColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: LinearProgressIndicator(
              value: progress,
              minHeight: 7,
              backgroundColor: cardColor,
              valueColor: const AlwaysStoppedAnimation(greenColor),
            ),
          ),
          const SizedBox(height: 35),
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              color: greenColor.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.psychology_rounded,
              color: greenColor,
              size: 34,
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            'CYBERSECURITY BASICS',
            style: TextStyle(
              color: mutedColor,
              fontSize: 11,
              letterSpacing: 1.3,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            question.question,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              height: 1.35,
            ),
          ),
          const SizedBox(height: 28),
          ...List.generate(
            question.options.length,
            (index) => buildOption(question, index),
          ),
          if (selectedAnswer != null) ...[
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: selectedAnswer == question.correctIndex
                    ? greenColor.withValues(alpha: 0.10)
                    : Colors.red.withValues(alpha: 0.10),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: selectedAnswer == question.correctIndex
                      ? greenColor.withValues(alpha: 0.4)
                      : Colors.red.withValues(alpha: 0.4),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        selectedAnswer == question.correctIndex
                            ? Icons.check_circle_rounded
                            : Icons.info_outline_rounded,
                        color: selectedAnswer == question.correctIndex
                            ? greenColor
                            : Colors.redAccent,
                      ),
                      const SizedBox(width: 9),
                      Text(
                        selectedAnswer == question.correctIndex
                            ? 'Correct answer!'
                            : 'Not quite!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: selectedAnswer == question.correctIndex
                              ? greenColor
                              : Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    question.explanation,
                    style: const TextStyle(
                      color: mutedColor,
                      height: 1.6,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 54,
              child: FilledButton(
                onPressed: nextQuestion,
                style: FilledButton.styleFrom(
                  backgroundColor: greenColor,
                  foregroundColor: backgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  currentQuestion == quizQuestions.length - 1
                      ? 'View Results'
                      : 'Next Question',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
          const SizedBox(height: 25),
          Center(
            child: Text(
              'YOUR SCORE: $score',
              style: const TextStyle(
                color: mutedColor,
                fontSize: 12,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOption(QuizQuestion question, int index) {
    final isSelected = selectedAnswer == index;
    final hasAnswered = selectedAnswer != null;
    final isCorrect = index == question.correctIndex;

    Color borderColor = cardColor;
    Color fillColor = cardColor;
    Color iconColor = mutedColor;
    IconData icon = Icons.circle_outlined;

    if (hasAnswered && isCorrect) {
      borderColor = greenColor;
      fillColor = greenColor.withValues(alpha: 0.10);
      iconColor = greenColor;
      icon = Icons.check_circle_rounded;
    } else if (isSelected) {
      borderColor = Colors.redAccent;
      fillColor = Colors.red.withValues(alpha: 0.08);
      iconColor = Colors.redAccent;
      icon = Icons.cancel_rounded;
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(17),
        border: Border.all(color: borderColor),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(17),
        onTap: hasAnswered ? null : () => selectAnswer(index),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 17,
          ),
          child: Row(
            children: [
              Icon(icon, color: iconColor, size: 22),
              const SizedBox(width: 13),
              Expanded(
                child: Text(
                  question.options[index],
                  style: const TextStyle(
                    fontSize: 13,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildResults() {
    final percentage = (score / quizQuestions.length * 100).round();

    String message;
    IconData resultIcon;

    if (percentage >= 80) {
      message = 'Excellent work!';
      resultIcon = Icons.emoji_events_rounded;
    } else if (percentage >= 50) {
      message = 'Good effort!';
      resultIcon = Icons.workspace_premium_rounded;
    } else {
      message = 'Keep learning!';
      resultIcon = Icons.school_rounded;
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const SizedBox(height: 35),
          Container(
            height: 105,
            width: 105,
            decoration: BoxDecoration(
              color: greenColor.withValues(alpha: 0.12),
              shape: BoxShape.circle,
            ),
            child: Icon(
              resultIcon,
              color: greenColor,
              size: 58,
            ),
          ),
          const SizedBox(height: 28),
          const Text(
            'QUIZ COMPLETED',
            style: TextStyle(
              color: greenColor,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            message,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'Every question is an opportunity to become safer online.',
            style: TextStyle(
              color: mutedColor,
              fontSize: 14,
              height: 1.6,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 35),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(28),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF123E3D),
                  Color(0xFF172D42),
                ],
              ),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                const Text(
                  'YOUR FINAL SCORE',
                  style: TextStyle(
                    color: Color(0xFFC4D3DF),
                    fontSize: 11,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  '$score / ${quizQuestions.length}',
                  style: const TextStyle(
                    color: greenColor,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '$percentage%',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            height: 54,
            child: FilledButton.icon(
              onPressed: restartQuiz,
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('Try Again'),
              style: FilledButton.styleFrom(
                backgroundColor: greenColor,
                foregroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            height: 54,
            child: OutlinedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.home_rounded),
              label: const Text('Back to Dashboard'),
              style: OutlinedButton.styleFrom(
                foregroundColor: greenColor,
                side: const BorderSide(color: greenColor),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
