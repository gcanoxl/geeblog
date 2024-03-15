import 'package:flutter/material.dart';
import 'package:get/utils.dart';

import 'components/login_body.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('login'.tr)),
      body: const LoginBody(),
    );
  }
}
