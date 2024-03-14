import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';
import 'package:geeblog/models/blog.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({
    super.key,
    required this.blog,
  });
  final Blog blog;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: double.infinity),
      child: Container(
        margin: const EdgeInsets.symmetric(
            vertical: defaultPadding / 2, horizontal: defaultPadding / 2),
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding / 2, vertical: defaultPadding / 2),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.grey.withOpacity(0.2)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              blog.title,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Text(blog.content),
          ],
        ),
      ),
    );
  }
}
