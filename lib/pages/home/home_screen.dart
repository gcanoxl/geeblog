import 'package:flutter/material.dart';
import 'package:geeblog/pages/home/components/home_body.dart';
import 'package:get/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('app_name'.tr),
      ),
      body: const HomeBody(),
    );
  }
}
