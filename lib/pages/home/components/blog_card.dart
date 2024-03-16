import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:geeblog/constants.dart';
import 'package:geeblog/models/blog.dart';
import 'package:get/get.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({
    super.key,
    required this.blog,
  });
  final Blog blog;

  parseTimestamp(String timestamp) {
    final DateTime date = DateTime.parse(timestamp).toLocal();
    return '${date.year}-${date.month}-${date.day} ${date.hour}:${date.minute}';
  }

  @override
  Widget build(BuildContext context) {
    final String time = parseTimestamp(blog.created_at);
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: InkWell(
        onTap: () {
          Get.toNamed('/article?id=${blog.id}');
        },
        child: ConstrainedBox(
          constraints: const BoxConstraints(minWidth: double.infinity),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding / 2,
              vertical: defaultPadding / 2,
            ),
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
                    fontSize: defaultPadding,
                  ),
                ),
                const SizedBox(height: defaultPadding / 2),
                Text(
                  '${'created_at'.tr}: $time',
                  style: TextStyle(
                    fontSize: defaultPadding * 0.6,
                    color: Colors.black.withOpacity(defaultOpacity),
                  ),
                ),
                const SizedBox(height: defaultPadding / 2),
                MarkdownBody(data: blog.content),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
