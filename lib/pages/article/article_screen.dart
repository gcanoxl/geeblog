import 'package:flutter/material.dart';
import 'package:geeblog/controllers/blogs/blogs_controller.dart';
import 'package:get/get.dart';

import 'components/article_body.dart';

class ArticleScreen extends StatelessWidget {
  static const String routeName = '/article';

  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final id = Get.parameters['id'];
    final BlogsController blogsController = Get.find();
    final blog = blogsController.findBlog(id!);
    return Scaffold(
      appBar: AppBar(
        title: Text(blog.title),
      ),
      body: ArticleBody(
        content: blog.content,
      ),
    );
  }
}
