import 'package:geeblog/pages/article/article_screen.dart';
import 'package:geeblog/pages/home/home_screen.dart';
import 'package:geeblog/pages/login/login_screen.dart';
import 'package:geeblog/pages/signup/signup_screen.dart';
import 'package:get/get.dart';

final pageMap = [
  GetPage(name: '/home', page: () => const HomePage()),
  GetPage(name: '/article', page: () => const ArticleScreen()),
  GetPage(name: '/login', page: () => const LoginScreen()),
  GetPage(name: '/signup', page: () => const SignupScreen()),
];
