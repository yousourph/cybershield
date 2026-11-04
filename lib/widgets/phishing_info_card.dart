import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class PhishingInfoCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<String> children;

  const PhishingInfoCard({
    super.key,
    required this.title,
    required this.icon,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white.withValues(alpha: 0.05)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: greenColor, size: 23),
              const SizedBox(width: 10),
              Expanded(child: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
            ],
          ),
          const SizedBox(height: 13),
          ...children.map((item) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 7),
                      child: Icon(Icons.circle, size: 6, color: cyanColor),
                    ),
                    const SizedBox(width: 10),
                    Expanded(child: Text(item, style: const TextStyle(color: Color(0xFFC4D3DF), height: 1.5))),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
