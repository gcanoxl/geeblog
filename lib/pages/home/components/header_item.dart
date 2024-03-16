import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';
import 'package:geeblog/themes.dart';

class HeaderItem extends StatefulWidget {
  const HeaderItem({
    super.key,
    this.isSelected = false,
    required this.title,
  });
  final bool isSelected;
  final String title;

  @override
  State<HeaderItem> createState() => _HeaderItemState();
}

class _HeaderItemState extends State<HeaderItem> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHovered = value;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: widget.isSelected || isHovered
                  ? dividerColor
                  : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding / 2, horizontal: defaultPadding),
        margin: const EdgeInsets.only(right: defaultPadding),
        child: Text(
          widget.title,
          style: const TextStyle(
            fontSize: defaultPadding * 0.6,
            color: menuTextColor,
          ),
        ),
      ),
    );
  }
}
