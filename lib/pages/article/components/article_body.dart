import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ArticleBody extends StatelessWidget {
  const ArticleBody({
    super.key,
    required this.content,
  });
  final String content;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: MarkdownBody(data: content),
      ),
    );
  }
}
