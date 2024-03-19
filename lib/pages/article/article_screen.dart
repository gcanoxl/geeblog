import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';
import 'package:geeblog/controllers/blogs_controller.dart';
import 'package:geeblog/pages/article/components/article_body.dart';
import 'package:get/get.dart';

class ArticleScreen extends StatelessWidget {
  static const String routeName = '/article';

  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final id = Get.parameters['id'];
    final BlogsController blogsController = Get.find();
    return FutureBuilder(
      future: blogsController.loadBlogById(id!),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data != null) {
            final blog = snapshot.data!;
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

        return preloader;
      },
    );
  }
}
