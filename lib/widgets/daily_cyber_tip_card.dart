import 'package:flutter/material.dart';
import '../data/daily_cyber_tips.dart';
import '../theme/app_colors.dart';

class DailyCyberTipCard extends StatelessWidget {
  const DailyCyberTipCard({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final dayOfYear = now.difference(DateTime(now.year, 1, 1)).inDays;
    final tip = dailyCyberTips[dayOfYear % dailyCyberTips.length];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF123E3D), Color(0xFF172D42)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: greenColor.withValues(alpha: 0.25)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.lightbulb_outline_rounded, color: greenColor, size: 23),
              const SizedBox(width: 9),
              const Expanded(
                child: Text(
                  'DAILY CYBER TIP',
                  style: TextStyle(
                    color: greenColor,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              Icon(tip.icon, color: Colors.white70, size: 22),
            ],
          ),
          const SizedBox(height: 17),
          Text(
            tip.title,
            style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 9),
          Text(
            tip.summary,
            style: const TextStyle(color: Color(0xFFC4D3DF), fontSize: 13, height: 1.7),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton.icon(
              onPressed: () => showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                backgroundColor: cardColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                builder: (sheetContext) => SafeArea(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(22, 12, 22, 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Center(
                          child: Container(
                            width: 42,
                            height: 4,
                            decoration: BoxDecoration(
                              color: mutedColor.withValues(alpha: 0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Container(
                          width: 54,
                          height: 54,
                          decoration: BoxDecoration(
                            color: greenColor.withValues(alpha: 0.12),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Icon(tip.icon, color: greenColor, size: 29),
                        ),
                        const SizedBox(height: 18),
                        const Text(
                          'TODAY\'S CYBER TIP',
                          style: TextStyle(
                            color: greenColor,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.3,
                          ),
                        ),
                        const SizedBox(height: 9),
                        Text(
                          tip.title,
                          style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          tip.details,
                          style: const TextStyle(color: Color(0xFFD1DCE7), fontSize: 14, height: 1.8),
                        ),
                        const SizedBox(height: 22),
                        SizedBox(
                          width: double.infinity,
                          child: FilledButton(
                            onPressed: () => Navigator.pop(sheetContext),
                            style: FilledButton.styleFrom(
                              backgroundColor: greenColor,
                              foregroundColor: backgroundColor,
                              padding: const EdgeInsets.symmetric(vertical: 14),
                            ),
                            child: const Text('Got it'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              icon: const Icon(Icons.arrow_forward_rounded, size: 18),
              label: const Text('Read Full Tip'),
              style: TextButton.styleFrom(
                foregroundColor: greenColor,
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
