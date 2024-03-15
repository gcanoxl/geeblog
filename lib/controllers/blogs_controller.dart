import 'package:geeblog/models/index.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class BlogsController extends GetxController with StateMixin<List<Blog>> {
  @override
  void onInit() async {
    try {
      final data = await Supabase.instance.client.from('blogs').select();
      final blogs = data.map(Blog.fromJson).toList();
      change(blogs, status: RxStatus.success());
    } catch (e) {
      change(null, status: RxStatus.error('Error fetching blogs'));
    }
    super.onInit();
  }

  Blog findBlog(String id) {
    final blog = state!.firstWhere((blog) => blog.id == id);
    return blog;
  }
}
