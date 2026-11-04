import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class BulletList extends StatelessWidget {
  final List<String> items;

  const BulletList({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 11),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 7),
                    height: 6,
                    width: 6,
                    decoration: const BoxDecoration(
                      color: greenColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 11),
                  Expanded(
                    child: Text(
                      item,
                      style: const TextStyle(
                        color: Color(0xFFD5DEEA),
                        fontSize: 12,
                        height: 1.65,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
