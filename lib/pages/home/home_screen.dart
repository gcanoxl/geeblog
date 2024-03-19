import 'package:flutter/material.dart';
import 'package:geeblog/pages/home/components/desktop_header.dart';
import 'package:geeblog/pages/home/components/home_body.dart';
import 'package:geeblog/responsive.dart';
import 'package:get/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: Scaffold(
        body: Column(
          children: [
            const DesktopHeader(),
            Expanded(
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 800),
                  child: const HomeBody(),
                ),
              ),
            ),
          ],
        ),
      ),
      mobile: Scaffold(
        appBar: AppBar(
          title: Text('app_name'.tr),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: const HomeBody(),
      ),
    );
  }
}
