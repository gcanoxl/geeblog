import 'package:flutter/material.dart';
import 'package:geeblog/pages/home/components/home_body.dart';
import 'package:geeblog/pages/home/components/profile_body.dart';
import 'package:get/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('app_name'.tr),
        ),
        bottomNavigationBar: TabBar(tabs: [
          Tab(icon: const Icon(Icons.home), text: 'home'.tr),
          // Tab(icon: const Icon(Icons.search), text: 'search'.tr),
          Tab(icon: const Icon(Icons.person), text: 'profile'.tr),
        ]),
        body: const TabBarView(
          children: [
            HomeBody(),
            // SearchBody(),
            ProfileBody(),
          ],
        ),
      ),
    );
  }
}
