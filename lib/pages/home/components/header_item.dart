import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';

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
    final primaryColor = Theme.of(context).primaryColor;
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
                  ? primaryColor
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
            fontSize: defaultPadding * 0.8,
          ),
        ),
      ),
    );
  }
}
