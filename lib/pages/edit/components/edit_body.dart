import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:geeblog/responsive.dart';

class EditBody extends StatefulWidget {
  const EditBody({super.key});

  @override
  State<EditBody> createState() => _EditBodyState();
}

class _EditBodyState extends State<EditBody> {
  final markdownController = TextEditingController();
  @override
  void dispose() {
    markdownController.dispose();
    super.dispose();
  }

  String _markdownData = '';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            expands: true,
            onChanged: (value) {
              setState(() {
                _markdownData = value;
              });
            },
            keyboardType: TextInputType.multiline,
            maxLines: null,
            controller: markdownController,
          ),
        ),
        if (!Responsive.isMobile(context))
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(color: Colors.grey),
                ),
              ),
              child: Markdown(data: _markdownData),
            ),
          ),
      ],
    );
  }
}
