import 'package:flutter/material.dart';

class CyberThreat {
  final String title;
  final String summary;
  final IconData icon;
  final Color color;
  final String whatItIs;
  final List<String> warningSigns;
  final List<String> safetyTips;
  final List<String> ifAffected;

  const CyberThreat({
    required this.title,
    required this.summary,
    required this.icon,
    required this.color,
    required this.whatItIs,
    required this.warningSigns,
    required this.safetyTips,
    required this.ifAffected,
  });
}
