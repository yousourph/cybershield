import 'package:flutter/material.dart';
import '../data/phishing_test_questions.dart';
import '../theme/app_colors.dart';
import '../widgets/phishing_example_card.dart';
import '../widgets/phishing_hero_card.dart';
import '../widgets/phishing_info_card.dart';

// Phishing Awareness: Learn, Recognise, and Test.
class PhishingAwarenessScreen extends StatelessWidget {
  const PhishingAwarenessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Phishing Awareness',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: backgroundColor,
          bottom: const TabBar(
            indicatorColor: greenColor,
            labelColor: greenColor,
            unselectedLabelColor: mutedColor,
            tabs: [
              Tab(icon: Icon(Icons.school_outlined), text: 'Learn'),
              Tab(icon: Icon(Icons.visibility_outlined), text: 'Recognise'),
              Tab(icon: Icon(Icons.quiz_outlined), text: 'Test'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            PhishingLearnTab(),
            PhishingRecogniseTab(),
            PhishingTestTab(),
          ],
        ),
      ),
    );
  }
}

class PhishingLearnTab extends StatelessWidget {
  const PhishingLearnTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: const [
        PhishingHeroCard(
          icon: Icons.phishing_rounded,
          title: 'Think before you click.',
          subtitle:
              'Phishing is a trick used to steal information by pretending to be someone you trust.',
          color: Color(0xFFFFB86B),
        ),
        SizedBox(height: 22),
        PhishingInfoCard(
          title: 'What is phishing?',
          icon: Icons.help_outline_rounded,
          children: [
            'Phishing is a type of online scam in which criminals impersonate a trusted person or organisation.',
            'They may send fake emails, text messages, social media messages, or create websites that look genuine.',
            'Their goal may be to steal passwords, bank details, one-time passwords (OTPs), or make you download harmful files.',
          ],
        ),
        SizedBox(height: 14),
        PhishingInfoCard(
          title: 'Common warning signs',
          icon: Icons.flag_outlined,
          children: [
            'Urgent threats such as “Your account will be closed in 10 minutes.”',
            'Unexpected prizes, refunds, job offers, or requests for payment.',
            'A sender address or web address that is misspelled or does not match the real organisation.',
            'Requests for your password, PIN, bank details, or OTP.',
            'Unexpected attachments or links that you are pressured to open.',
            'Messages with unusual wording or details that do not fit what you expect.',
          ],
        ),
        SizedBox(height: 14),
        PhishingInfoCard(
          title: 'How to protect yourself',
          icon: Icons.verified_user_outlined,
          children: [
            'Pause. Do not let an urgent or frightening message rush your decision.',
            'Check the full sender address and web address carefully.',
            'Do not open unexpected links or attachments. Visit the official app or website yourself instead.',
            'Never share passwords, PINs, or OTPs in response to a message or call.',
            'Use multi-factor authentication where available and keep your devices updated.',
            'Report suspicious messages using the service’s official reporting option.',
          ],
        ),
        SizedBox(height: 14),
        PhishingInfoCard(
          title: 'What if you clicked?',
          icon: Icons.health_and_safety_outlined,
          children: [
            'Close the page and do not enter any more information.',
            'If you shared a password, change it immediately using the official website or app. Change it anywhere else you reused it.',
            'If you shared banking details or an OTP, contact your bank through its official channel immediately.',
            'Run a security scan if you downloaded a file, and seek trusted technical help if you suspect malware.',
            'Report the incident. Acting quickly can limit the damage.',
          ],
        ),
        SizedBox(height: 20),
        Text(
          'Ready to practise? Open Recognise to inspect examples, then take the Test.',
          textAlign: TextAlign.center,
          style: TextStyle(color: mutedColor, height: 1.5),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class PhishingRecogniseTab extends StatelessWidget {
  const PhishingRecogniseTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Text(
          'Can you spot the red flags?',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          'These are fictional training examples. Expand each one to see what makes it suspicious.',
          style: TextStyle(color: mutedColor, height: 1.5),
        ),
        SizedBox(height: 18),
        PhishingExampleCard(
          label: 'TEXT MESSAGE',
          color: Color(0xFFFFB86B),
          icon: Icons.sms_outlined,
          message:
              'URGENT: Your bank account will be blocked today! Verify your account now at secure-bank-verify.example and enter your PIN to keep access.',
          redFlags: [
            'It creates panic with an urgent threat.',
            'The web address is unfamiliar and does not establish that it belongs to the bank.',
            'A request to enter a PIN through a message link is dangerous.',
          ],
          safeAction:
              'Do not tap the link. Open your bank’s official app or contact the bank using a trusted number.',
        ),
        SizedBox(height: 14),
        PhishingExampleCard(
          label: 'EMAIL',
          color: Color(0xFFFF7D8A),
          icon: Icons.email_outlined,
          message:
              'Congratulations! You have won a new smartphone. Pay a small delivery fee today and send your card details to claim your prize.',
          redFlags: [
            'You were not expecting to enter a competition.',
            'It asks for payment and card details to claim an unexpected prize.',
            'The message relies on excitement to make you act quickly.',
          ],
          safeAction:
              'Do not pay or share details. Verify any competition through the organiser’s official website.',
        ),
        SizedBox(height: 14),
        PhishingExampleCard(
          label: 'SOCIAL MEDIA DM',
          color: Color(0xFF45C8F5),
          icon: Icons.chat_bubble_outline_rounded,
          message:
              'Hey! Is this you in this video? 😳 Open this link and sign in to see it: login-check.example',
          redFlags: [
            'The message uses curiosity to tempt you to click.',
            'The link leads to an unfamiliar sign-in page.',
            'A compromised friend’s account can send malicious messages without their knowledge.',
          ],
          safeAction:
              'Do not sign in through the link. Contact your friend through another channel and check the platform directly.',
        ),
        SizedBox(height: 14),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFF151F30),
            borderRadius: BorderRadius.all(Radius.circular(16)),
            border: Border.fromBorderSide(BorderSide(color: Color(0x3345C8F5))),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.lightbulb_outline_rounded, color: cyanColor),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Remember: one warning sign does not always prove a message is fake, and polished messages can still be phishing. Verify through a separate, trusted channel.',
                  style: TextStyle(color: Color(0xFFC4D3DF), height: 1.5),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class PhishingTestTab extends StatefulWidget {
  const PhishingTestTab({super.key});

  @override
  State<PhishingTestTab> createState() => _PhishingTestTabState();
}

class _PhishingTestTabState extends State<PhishingTestTab> {
  int questionIndex = 0;
  int score = 0;
  int? selectedIndex;
  bool finished = false;

  void selectAnswer(int index) {
    if (selectedIndex != null) return;
    setState(() {
      selectedIndex = index;
      if (index == phishingTestQuestions[questionIndex].correctIndex) {
        score++;
      }
    });
  }

  void nextQuestion() {
    if (questionIndex < phishingTestQuestions.length - 1) {
      setState(() {
        questionIndex++;
        selectedIndex = null;
      });
    } else {
      setState(() => finished = true);
    }
  }

  void restartTest() {
    setState(() {
      questionIndex = 0;
      score = 0;
      selectedIndex = null;
      finished = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (finished) return buildResults();

    final question = phishingTestQuestions[questionIndex];
    final answered = selectedIndex != null;

    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Test your instincts',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              '${questionIndex + 1}/${phishingTestQuestions.length}',
              style: const TextStyle(color: greenColor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: LinearProgressIndicator(
            value: (questionIndex + 1) / phishingTestQuestions.length,
            minHeight: 6,
            backgroundColor: cardColor,
            valueColor: const AlwaysStoppedAnimation<Color>(greenColor),
          ),
        ),
        const SizedBox(height: 22),
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: cyanColor.withValues(alpha: 0.25)),
          ),
          child: Text(
            question.message,
            style: const TextStyle(fontSize: 16, height: 1.6),
          ),
        ),
        const SizedBox(height: 18),
        ...List.generate(question.options.length, (index) {
          final isSelected = selectedIndex == index;
          final isCorrect = question.correctIndex == index;
          Color borderColor = cardColor;
          Color? fillColor;
          if (answered && isCorrect) {
            borderColor = greenColor;
            fillColor = greenColor.withValues(alpha: 0.10);
          } else if (answered && isSelected && !isCorrect) {
            borderColor = const Color(0xFFFF7D8A);
            fillColor = const Color(0x22FF7D8A);
          }

          return Padding(
            padding: const EdgeInsets.only(bottom: 11),
            child: Material(
              color: fillColor ?? cardColor,
              borderRadius: BorderRadius.circular(15),
              child: InkWell(
                onTap: answered ? null : () => selectAnswer(index),
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: borderColor),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          question.options[index],
                          style: const TextStyle(height: 1.4),
                        ),
                      ),
                      if (answered && isCorrect)
                        const Icon(Icons.check_circle_rounded, color: greenColor)
                      else if (answered && isSelected)
                        const Icon(Icons.cancel_rounded, color: Color(0xFFFF7D8A)),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
        if (answered) ...[
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: selectedIndex == question.correctIndex
                  ? greenColor.withValues(alpha: 0.10)
                  : const Color(0x22FF7D8A),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  selectedIndex == question.correctIndex ? 'Correct!' : 'Not quite.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == question.correctIndex
                        ? greenColor
                        : const Color(0xFFFF7D8A),
                  ),
                ),
                const SizedBox(height: 7),
                Text(question.explanation, style: const TextStyle(height: 1.5)),
              ],
            ),
          ),
          const SizedBox(height: 18),
          SizedBox(
            height: 52,
            child: FilledButton.icon(
              onPressed: nextQuestion,
              icon: Icon(questionIndex == phishingTestQuestions.length - 1
                  ? Icons.emoji_events_outlined
                  : Icons.arrow_forward_rounded),
              label: Text(questionIndex == phishingTestQuestions.length - 1
                  ? 'View Results'
                  : 'Next Question'),
              style: FilledButton.styleFrom(
                backgroundColor: greenColor,
                foregroundColor: backgroundColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
        ],
        const SizedBox(height: 20),
      ],
    );
  }

  Widget buildResults() {
    final percent = (score / phishingTestQuestions.length * 100).round();
    final message = percent == 100
        ? 'Excellent work! You spotted every phishing risk.'
        : percent >= 60
            ? 'Good effort! Review the explanations to sharpen your skills.'
            : 'Keep learning. Review the guide and try again—you can improve.';

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 460),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: greenColor.withValues(alpha: 0.12),
                ),
                child: const Icon(Icons.shield_rounded, color: greenColor, size: 54),
              ),
              const SizedBox(height: 22),
              const Text(
                'Awareness Check Complete!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Text(
                '$score / ${phishingTestQuestions.length}',
                style: const TextStyle(
                  color: greenColor,
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('$percent% correct', style: const TextStyle(color: mutedColor)),
              const SizedBox(height: 18),
              Text(message, textAlign: TextAlign.center, style: const TextStyle(height: 1.5)),
              const SizedBox(height: 28),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: FilledButton.icon(
                  onPressed: restartTest,
                  icon: const Icon(Icons.refresh_rounded),
                  label: const Text('Try Again'),
                  style: FilledButton.styleFrom(
                    backgroundColor: greenColor,
                    foregroundColor: backgroundColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: OutlinedButton.icon(
                  onPressed: () => DefaultTabController.of(context).animateTo(0),
                  icon: const Icon(Icons.school_outlined),
                  label: const Text('Review Learning Guide'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: greenColor,
                    side: const BorderSide(color: greenColor),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
