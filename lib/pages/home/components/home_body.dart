import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';
import 'package:geeblog/controllers/blogs_controller.dart';
import 'package:geeblog/pages/home/components/blog_card.dart';
import 'package:get/get.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final BlogsController bc = Get.put(BlogsController());
    return bc.obx(
      (blogs) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding / 2,
          vertical: defaultPadding / 2,
        ),
        child: ListView.builder(
          itemCount: blogs!.length,
          itemBuilder: (context, index) {
            return BlogCard(blog: blogs[index]);
          },
        ),
      ),
      onLoading: const Center(child: CircularProgressIndicator()),
      onEmpty: const Text('No data found'),
    );
  }
}
