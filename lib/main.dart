import 'package:flutter/material.dart';
import 'package:geeblog/controllers/auth_controller.dart';
import 'package:geeblog/messages.dart';
import 'package:geeblog/page_map.dart';
import 'package:geeblog/pages/home/home_screen.dart';
import 'package:geeblog/themes.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const supabaseUrl = 'https://nhykxaqbevsivnyuokbx.supabase.co';
const supabaseKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5oeWt4YXFiZXZzaXZueXVva2J4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTAyMzAxMTcsImV4cCI6MjAyNTgwNjExN30.mnHiHTBKu46a6gh0PHmtmrbyEdHyemgajh5_8f6FRgc';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseKey,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AuthController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: pageMap,
      title: 'app_name'.tr,
      theme: theme,
      translations: Messages(),
      locale: const Locale('zh', 'CN'),
      home: const HomeScreen(),
      themeMode: ThemeMode.system,
    );
  }
}
