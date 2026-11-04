import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../widgets/daily_cyber_tip_card.dart';
import '../widgets/feature_card.dart';
import 'about_screens.dart';
import 'phishing_awareness_screen.dart';
import 'quiz_screen.dart';
import 'threat_guide_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: greenColor.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(
                      Icons.shield_moon_rounded,
                      color: greenColor,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CyberShield',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.3,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        'YOUR PERSONAL SECURITY GUIDE',
                        style: TextStyle(
                          color: mutedColor,
                          fontSize: 9,
                          letterSpacing: 1.1,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  PopupMenuButton<String>(
                    tooltip: 'More options',
                    color: cardColor,
                    icon: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const Icon(
                        Icons.more_vert_rounded,
                        color: Colors.white,
                      ),
                    ),
                    onSelected: (value) {
                      if (value == 'about') {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (_) => const AboutCyberShieldScreen(),
                          ),
                        );
                      } else if (value == 'author') {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (_) => const AboutAuthorScreen(),
                          ),
                        );
                      }
                    },
                    itemBuilder: (context) => const [
                      PopupMenuItem<String>(
                        value: 'about',
                        child: Row(
                          children: [
                            Icon(Icons.info_outline_rounded, color: greenColor),
                            SizedBox(width: 10),
                            Text('About CyberShield'),
                          ],
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'author',
                        child: Row(
                          children: [
                            Icon(Icons.person_outline_rounded, color: cyanColor),
                            SizedBox(width: 10),
                            Text('About the Author'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 35),
              const Text(
                'WELCOME TO CYBERSHIELD',
                style: TextStyle(
                  color: greenColor,
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.8,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Stay Safe.\nStay Secure.',
                style: TextStyle(
                  fontSize: 36,
                  height: 1.15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.8,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Your digital safety starts here. Learn to '
                'recognise threats and protect yourself online.',
                style: TextStyle(
                  color: mutedColor,
                  fontSize: 14,
                  height: 1.7,
                ),
              ),
              const SizedBox(height: 25),
              const DailyCyberTipCard(),
              const SizedBox(height: 30),
              const Text(
                'Your Security Toolkit',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 7),
              const Text(
                'Build safer digital habits, one step at a time.',
                style: TextStyle(
                  color: mutedColor,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 18),
              FeatureCard(
                icon: Icons.psychology_rounded,
                title: 'Cybersecurity Quiz',
                description:
                    'Test your knowledge and learn to stay protected.',
                color: greenColor,
                tag: 'TEST YOUR KNOWLEDGE',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const QuizScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 14),
              FeatureCard(
                icon: Icons.shield_outlined,
                title: 'Cyber Threats & Safety Guide',
                description:
                    'Explore common cyber threats, warning signs, and practical ways to stay safe.',
                color: cyanColor,
                tag: 'LEARN TO STAY SAFE',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ThreatGuideScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 14),
              FeatureCard(
                icon: Icons.phishing_rounded,
                title: 'Phishing Awareness',
                description:
                    'Learn to recognise suspicious messages and links.',
                color: const Color(0xFFFFB86B),
                tag: 'SPOT THE WARNING SIGNS',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PhishingAwarenessScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 28),
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.security_rounded,
                      color: greenColor,
                      size: 30,
                    ),
                    SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your safety matters.',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Stay informed. Stay protected.',
                            style: TextStyle(
                              color: mutedColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'CYBERSHIELD • YOUR DIGITAL SAFETY PARTNER',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: mutedColor,
                    fontSize: 9,
                    letterSpacing: 1,
                  ),
                ),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
