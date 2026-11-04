import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class AboutCyberShieldScreen extends StatelessWidget {
  const AboutCyberShieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About CyberShield'),
        backgroundColor: backgroundColor,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF123E3D), Color(0xFF172D42)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: greenColor.withValues(alpha: 0.25)),
                ),
                child: const Column(
                  children: [
                    Icon(Icons.shield_moon_rounded, color: greenColor, size: 62),
                    SizedBox(height: 15),
                    Text(
                      'CyberShield',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 7),
                    Text(
                      'Your Personal Cybersecurity Guide',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: cyanColor, fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 14),
                    Text(
                      'Stay aware. Stay protected.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xFFC4D3DF), height: 1.6),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 26),
              const _AboutSectionHeading(title: 'About the app', icon: Icons.info_outline_rounded),
              const SizedBox(height: 10),
              const Text(
                'CyberShield is a cybersecurity awareness app designed to make online safety easier to understand. It introduces common digital threats and shares practical guidance that can help users make safer decisions online.',
                style: TextStyle(color: mutedColor, fontSize: 14, height: 1.75),
              ),
              const SizedBox(height: 24),
              const _AboutSectionHeading(title: 'Our mission', icon: Icons.flag_outlined),
              const SizedBox(height: 10),
              const Text(
                'Our mission is to help people recognise suspicious activity, protect their personal information, and build safer digital habits through clear explanations and simple interactive learning.',
                style: TextStyle(color: mutedColor, fontSize: 14, height: 1.75),
              ),
              const SizedBox(height: 24),
              const _AboutSectionHeading(title: 'Explore CyberShield', icon: Icons.grid_view_rounded),
              const SizedBox(height: 12),
              const _AboutFeatureRow(
                icon: Icons.psychology_rounded,
                color: greenColor,
                title: 'Cybersecurity Quiz',
                description: 'Test your knowledge and learn from answer feedback.',
              ),
              const SizedBox(height: 12),
              const _AboutFeatureRow(
                icon: Icons.shield_outlined,
                color: cyanColor,
                title: 'Cyber Threats & Safety Guide',
                description: 'Learn about common threats, warning signs, and ways to stay safer.',
              ),
              const SizedBox(height: 12),
              const _AboutFeatureRow(
                icon: Icons.phishing_rounded,
                color: Color(0xFFFFB86B),
                title: 'Phishing Awareness',
                description: 'Learn to spot phishing attempts, review examples, and test your understanding.',
              ),
              const SizedBox(height: 12),
              const _AboutFeatureRow(
                icon: Icons.lightbulb_outline_rounded,
                color: greenColor,
                title: 'Daily Cybersecurity Tip',
                description: 'Get a practical reminder to help develop safer online habits.',
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(17),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: cyanColor.withValues(alpha: 0.18)),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.verified_user_outlined, color: cyanColor, size: 24),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Learn to stay safer', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                          SizedBox(height: 6),
                          Text(
                            'CyberShield is an educational resource. It supports cybersecurity awareness, but it cannot guarantee protection or replace professional help when a security incident occurs.',
                            style: TextStyle(color: mutedColor, fontSize: 12, height: 1.65),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22),
              const Center(
                child: Text(
                  'CYBERSHIELD • STAY AWARE. STAY PROTECTED.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: mutedColor, fontSize: 9, letterSpacing: 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AboutSectionHeading extends StatelessWidget {
  final String title;
  final IconData icon;

  const _AboutSectionHeading({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: greenColor, size: 21),
        const SizedBox(width: 9),
        Expanded(
          child: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}

class _AboutFeatureRow extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final String description;

  const _AboutFeatureRow({
    required this.icon,
    required this.color,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: color, size: 23),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                const SizedBox(height: 5),
                Text(description, style: const TextStyle(color: mutedColor, fontSize: 12, height: 1.5)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class AboutAuthorScreen extends StatelessWidget {
  const AboutAuthorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About the Author'),
        backgroundColor: backgroundColor,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(20, 24, 20, 22),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF123E3D), Color(0xFF172D42)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: greenColor.withValues(alpha: 0.25),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 154,
                      height: 184,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: greenColor, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: greenColor.withValues(alpha: 0.12),
                            blurRadius: 22,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/author.jpg',
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                          errorBuilder: (context, error, stackTrace) {
                            return const ColoredBox(
                              color: cardColor,
                              child: Icon(
                                Icons.person_rounded,
                                color: greenColor,
                                size: 64,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    const Text(
                      'Yusuf Ibrahim Mika’il',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 7),
                    const Text(
                      'ASPIRING CYBERSECURITY ENTHUSIAST',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: greenColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.15,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 26),
              const Align(
                alignment: Alignment.centerLeft,
                child: _AboutSectionHeading(
                  title: 'About Me',
                  icon: Icons.person_outline_rounded,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Yusuf Ibrahim Mika’il is an aspiring technology enthusiast '
                'with a strong passion for cybersecurity and the ever-evolving '
                'world of technology.',
                style: TextStyle(
                  color: mutedColor,
                  fontSize: 14,
                  height: 1.75,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Driven by a personal interest in cybersecurity, he is '
                'committed to continuously learning, exploring, and developing '
                'his knowledge in the field. He is also expanding his '
                'programming skills through Dart and Flutter, with an interest '
                'in mobile application development.',
                style: TextStyle(
                  color: mutedColor,
                  fontSize: 14,
                  height: 1.75,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'His ambition is to become an expert in cybersecurity and '
                'technology as a whole, using his knowledge and skills to '
                'contribute meaningfully to the digital world.',
                style: TextStyle(
                  color: mutedColor,
                  fontSize: 14,
                  height: 1.75,
                ),
              ),
              const SizedBox(height: 24),
              const Align(
                alignment: Alignment.centerLeft,
                child: _AboutSectionHeading(
                  title: 'Areas of Interest',
                  icon: Icons.interests_rounded,
                ),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 9,
                runSpacing: 9,
                children: [
                  _AuthorInterestChip(
                    icon: Icons.security_rounded,
                    label: 'Cybersecurity',
                    color: greenColor,
                  ),
                  _AuthorInterestChip(
                    icon: Icons.code_rounded,
                    label: 'Dart',
                    color: cyanColor,
                  ),
                  _AuthorInterestChip(
                    icon: Icons.phone_android_rounded,
                    label: 'Flutter',
                    color: cyanColor,
                  ),
                ],
              ),
              const SizedBox(height: 26),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: greenColor.withValues(alpha: 0.22),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.format_quote_rounded,
                      color: greenColor,
                      size: 30,
                    ),
                    SizedBox(height: 8),
                    Text(
                      '“Never let anyone tell you that you can’t.”',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        height: 1.5,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'PERSONAL MOTTO',
                      style: TextStyle(
                        color: mutedColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22),
              const Text(
                'Thank you for exploring CyberShield.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: mutedColor,
                  fontSize: 12,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AuthorInterestChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _AuthorInterestChip({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: color.withValues(alpha: 0.28)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 16),
          const SizedBox(width: 7),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
