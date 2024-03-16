import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';
import 'package:geeblog/models/blog.dart';
import 'package:geeblog/themes.dart';
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
          constraints: BoxConstraints(minWidth: double.infinity),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: defaultPadding,
              vertical: defaultPadding / 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  blog.title,
                  style: TextStyle(
                    fontSize: defaultPadding * 0.8,
                    color: boldTextColor,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: defaultPadding / 2),
                Text(
                  blog.content.replaceAll('\n\n', '\n'),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: defaultPadding * 0.6,
                    height: 1.8,
                    color: boldTextColor.withOpacity(0.9),
                  ),
                ),
                SizedBox(height: defaultPadding / 2),
                Row(
                  children: [
                    Text(
                      time,
                      style: TextStyle(
                        fontSize: defaultPadding * 0.54,
                        color: infoTextColor,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_comment_outlined),
                      iconSize: defaultPadding * 0.8,
                      color: boldTextColor,
                    ),
                    IconButton(
                      iconSize: defaultPadding * 0.8,
                      color: boldTextColor,
                      onPressed: () {},
                      icon: Icon(Icons.share_outlined),
                    ),
                    IconButton(
                      iconSize: defaultPadding * 0.8,
                      color: boldTextColor,
                      onPressed: () {},
                      icon: Icon(Icons.thumb_up_alt_outlined),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
