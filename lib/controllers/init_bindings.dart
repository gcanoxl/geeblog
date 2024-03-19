import 'package:geeblog/controllers/auth_controller.dart';
import 'package:geeblog/controllers/blogs_controller.dart';
import 'package:get/get.dart';

class InitBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => BlogsController());
  }
}
