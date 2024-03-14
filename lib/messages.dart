import 'package:get/get_navigation/src/root/internacionalization.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'app_name': 'Cano\'s Blog',
          'home': 'Home',
          'search': 'Search',
          'explore': 'Explore',
          'me': 'Me',
        },
        'zh_CN': {
          'app_name': '阿凌博客',
          'home': '首页',
          'search': '搜索',
          'explore': '浏览',
          'me': '我',
        },
      };
}
