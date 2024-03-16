import 'package:flutter/material.dart';
import 'package:geeblog/pages/home/components/desktop_header.dart';
import 'package:geeblog/pages/home/components/home_body.dart';
import 'package:geeblog/pages/home/components/profile_body.dart';
import 'package:geeblog/responsive.dart';
import 'package:get/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  constraints: const BoxConstraints(maxWidth: 840),
                  child: const HomeBody(),
                ),
              ),
            ),
          ],
        ),
      ),
      tablet: Scaffold(
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 240, minWidth: 200),
              child: const ProfileBody(),
            ),
            const Expanded(
              flex: 2,
              child: HomeBody(),
            ),
          ],
        ),
      ),
      mobile: DefaultTabController(
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
      ),
    );
  }
}
