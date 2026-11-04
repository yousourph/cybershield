import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class PhishingExampleCard extends StatelessWidget {
  final String label;
  final Color color;
  final IconData icon;
  final String message;
  final List<String> redFlags;
  final String safeAction;

  const PhishingExampleCard({
    super.key,
    required this.label,
    required this.color,
    required this.icon,
    required this.message,
    required this.redFlags,
    required this.safeAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: ExpansionTile(
        leading: Icon(icon, color: color),
        title: Text(label, style: TextStyle(color: color, fontSize: 11, fontWeight: FontWeight.bold, letterSpacing: 1)),
        subtitle: const Text('Tap to inspect this example', style: TextStyle(color: mutedColor, fontSize: 12)),
        iconColor: color,
        collapsedIconColor: mutedColor,
        childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 17),
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Text(message, style: const TextStyle(height: 1.6)),
          ),
          const SizedBox(height: 14),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text('Warning signs', style: TextStyle(color: Color(0xFFFFB86B), fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 8),
          ...redFlags.map((flag) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.warning_amber_rounded, color: Color(0xFFFFB86B), size: 18),
                    const SizedBox(width: 8),
                    Expanded(child: Text(flag, style: const TextStyle(color: Color(0xFFC4D3DF), height: 1.45))),
                  ],
                ),
              )),
          const SizedBox(height: 6),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Safer response', style: TextStyle(color: greenColor, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 6),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(safeAction, style: const TextStyle(color: Color(0xFFC4D3DF), height: 1.5)),
          ),
        ],
      ),
    );
  }
}
