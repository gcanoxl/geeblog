import 'package:geeblog/pages/article/article_screen.dart';
import 'package:geeblog/pages/edit/edit_screen.dart';
import 'package:geeblog/pages/home/home_screen.dart';
import 'package:geeblog/pages/login/login_screen.dart';
import 'package:geeblog/pages/signup/signup_screen.dart';
import 'package:get/get.dart';

final routes = [
  GetPage(name: HomeScreen.routeName, page: () => const HomeScreen()),
  GetPage(name: ArticleScreen.routeName, page: () => const ArticleScreen()),
  GetPage(name: LoginScreen.routeName, page: () => const LoginScreen()),
  GetPage(name: SignupScreen.routeName, page: () => const SignupScreen()),
  GetPage(name: EditScreen.routeName, page: () => const EditScreen()),
];
