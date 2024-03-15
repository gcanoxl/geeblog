import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.icon,
  });
  final VoidCallback onTap;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: double.infinity),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: defaultPadding,
            horizontal: defaultPadding,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black.withOpacity(defaultOpacity / 4),
              ),
            ),
          ),
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(width: defaultPadding),
              Text(
                title,
                style: const TextStyle(
                  // color: Colors.black.withOpacity(defaultOpacity),
                  fontSize: defaultPadding * 0.8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
