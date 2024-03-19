import 'package:geeblog/constants.dart';
import 'package:geeblog/models/index.dart';
import 'package:get/get.dart';

class BlogsController extends GetxController {
  final _blogList = <Blog>[].obs;

  get blogList => _blogList;

  Future<Blog> loadBlogById(String id) async {
    final blog = _blogList.firstWhereOrNull((blog) => blog.id == id);
    if (blog != null) {
      return blog;
    }
    final data = await supabase.from('blogs').select().eq('id', id).single();
    return Blog.fromJson(data);
  }

  loadAllBlogs() async {
    try {
      final data = await supabase.from('blogs').select().order('created_at');
      _blogList.value = data.map(Blog.fromJson).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  void onInit() async {
    await loadAllBlogs();
    super.onInit();
  }
}
