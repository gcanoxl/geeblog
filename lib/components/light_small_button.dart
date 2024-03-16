import 'package:flutter/material.dart';
import 'package:geeblog/themes.dart';

class LightSmallButton extends StatelessWidget {
  const LightSmallButton({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        side: const BorderSide(color: dividerColor),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        elevation: 0,
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          color: boldTextColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
