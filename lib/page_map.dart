import 'package:geeblog/pages/article/article_screen.dart';
import 'package:geeblog/pages/home/home_screen.dart';
import 'package:get/get.dart';

final page_map = [
  GetPage(name: '/home', page: () => const HomePage()),
  GetPage(name: '/article', page: () => const ArticleScreen()),
];
