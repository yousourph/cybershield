import 'package:flutter/material.dart';
import '../data/cyber_threats.dart';
import '../models/cyber_threat.dart';
import '../theme/app_colors.dart';
import '../widgets/bullet_list.dart';
import '../widgets/guide_section.dart';
import '../widgets/threat_list_card.dart';

class ThreatGuideScreen extends StatelessWidget {
  const ThreatGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Text(
          'Threats & Safety Guide',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF123E3D), Color(0xFF172D42)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: greenColor.withValues(alpha: 0.22),
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.shield_outlined, color: greenColor, size: 34),
                  SizedBox(height: 14),
                  Text(
                    'Know the threat. Protect yourself.',
                    style: TextStyle(
                      fontSize: 21,
                      height: 1.3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 9),
                  Text(
                    'Explore common online threats, learn their warning signs, '
                    'and discover practical steps you can take to stay safer.',
                    style: TextStyle(
                      color: Color(0xFFC4D3DF),
                      fontSize: 13,
                      height: 1.7,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              'EXPLORE COMMON THREATS',
              style: TextStyle(
                color: mutedColor,
                fontSize: 11,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.3,
              ),
            ),
            const SizedBox(height: 14),
            ...cyberThreats.map(
              (threat) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ThreatListCard(
                  threat: threat,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ThreatDetailScreen(threat: threat),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'A little awareness can make a big difference. '
              'Pause, verify, and protect your information.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: mutedColor,
                fontSize: 12,
                height: 1.7,
              ),
            ),
            const SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}

class ThreatDetailScreen extends StatelessWidget {
  final CyberThreat threat;

  const ThreatDetailScreen({
    super.key,
    required this.threat,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          threat.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 28),
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: threat.color.withValues(alpha: 0.35),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: threat.color.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Icon(
                      threat.icon,
                      color: threat.color,
                      size: 32,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    threat.title,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    threat.summary,
                    style: const TextStyle(
                      color: mutedColor,
                      fontSize: 13,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            GuideSection(
              title: 'What is it?',
              icon: Icons.menu_book_rounded,
              color: cyanColor,
              child: Text(
                threat.whatItIs,
                style: const TextStyle(
                  color: Color(0xFFD5DEEA),
                  fontSize: 13,
                  height: 1.75,
                ),
              ),
            ),
            const SizedBox(height: 14),
            GuideSection(
              title: 'Warning signs',
              icon: Icons.warning_amber_rounded,
              color: const Color(0xFFFFB86B),
              child: BulletList(items: threat.warningSigns),
            ),
            const SizedBox(height: 14),
            GuideSection(
              title: 'How to stay safe',
              icon: Icons.verified_user_outlined,
              color: greenColor,
              child: BulletList(items: threat.safetyTips),
            ),
            const SizedBox(height: 14),
            GuideSection(
              title: 'What if it happens to you?',
              icon: Icons.health_and_safety_outlined,
              color: const Color(0xFFFF7B86),
              child: BulletList(items: threat.ifAffected),
            ),
            const SizedBox(height: 22),
            Container(
              padding: const EdgeInsets.all(17),
              decoration: BoxDecoration(
                color: greenColor.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(17),
                border: Border.all(
                  color: greenColor.withValues(alpha: 0.25),
                ),
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.lightbulb_outline_rounded, color: greenColor),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Remember: pause before you act, verify unexpected '
                      'requests, and ask for help if something feels wrong.',
                      style: TextStyle(
                        color: Color(0xFFD5DEEA),
                        fontSize: 12,
                        height: 1.7,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
