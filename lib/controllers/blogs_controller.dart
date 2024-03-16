import 'package:geeblog/constants.dart';
import 'package:geeblog/models/index.dart';
import 'package:get/get.dart';

class BlogsController extends GetxController {
  final _blogList = <Blog>[].obs;

  get blogList => _blogList;

  Blog getBlogById(String id) {
    final blog = _blogList.firstWhereOrNull((element) => element.id == id);
    if (blog != null) {
      return blog;
    } else {
      throw Exception('Blog not found');
    }
  }

  loadAllBlogs() async {
    try {
      final data = await supabase.from('blogs').select().order('created_at');
      _blogList.value = data.map(Blog.fromJson).toList();
    } catch (e) {
      rethrow;
    }
  }

  // loadBlog(String id) async {
  //   try {
  //     final data = await supabase.from('blogs').select().eq('id', id);
  //     data.map((e) {
  //       final blog = Blog.fromJson(e);
  //       if (_blogCache[blog.id] != blog) _blogCache[blog.id] = blog;
  //     });
  //   } catch (e) {
  //     rethrow;
  //   }
  //
  // }

  // loadLatestBlogs(int count) async {
  //   try {
  //     final data = await supabase
  //         .from('blogs')
  //         .select()
  //         .order('created_at')
  //         .limit(count);
  //     data.map((e) {
  //       final blog = Blog.fromJson(e);
  //       if (_blogCache[blog.id] != blog) _blogCache[blog.id] = blog;
  //     });
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  @override
  void onInit() async {
    await loadAllBlogs();
    super.onInit();
  }
}
