import 'package:get/get_navigation/src/root/internacionalization.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'app_name': 'Cano\'s Blog',
          'home': 'Home',
          'search': 'Search',
          'explore': 'Explore',
          'profile': 'Profile',
          'login': 'Sign In',
          'username': 'Username',
          'password': 'Password',
          'signup_slogon': 'No account? Sign up now!',
          'signup': 'Sign Up',
          'email': 'Email',
          'confirm_password': 'Confirm Password',
          'error': 'Error',
          'password_too_short': 'Password too short: 6 characters at least',
          'invalid_email': 'Invalid Email: Please enter a valid email address',
          'invalid_username':
              'Invalid Username: Username must be composed of letters, numbers, and underscores, and be 2-24 characters long',
          'password_do_not_match': 'Passwords do not match',
          'logout': 'Logout',
          'publish': 'Publish',
        },
        'zh_CN': {
          'app_name': '阿凌博客',
          'home': '首页',
          'search': '搜索',
          'explore': '浏览',
          'profile': '个人中心',
          'login': '立即登录',
          'username': '用户名',
          'password': '密码',
          'signup_slogon': '没有账号？五秒注册',
          'signup': '注册',
          'email': '邮箱',
          'confirm_password': '确认密码',
          'error': '错误',
          'password_too_short': '密码太短：至少6个字符',
          'invalid_email': '无效邮箱：请输入有效的邮箱地址',
          'invalid_username': '无效用户名：用户名必须由汉字、字母、数字和下划线组成，长度在2-24个字符',
          'password_do_not_match': '密码不匹配',
          'logout': '退出登录',
          'publish': '发布',
        },
      };
}
