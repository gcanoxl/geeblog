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
    return Obx(
      () => Padding(
        padding: const EdgeInsets.symmetric(
          vertical: defaultPadding / 2,
        ),
        child: bc.blogList == null
            ? preloader
            : ListView.builder(
                itemCount: bc.blogList.length,
                itemBuilder: (context, index) {
                  return BlogCard(blog: bc.blogList[index]);
                },
              ),
      ),
    );
  }
}
