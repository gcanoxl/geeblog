import 'package:flutter/material.dart';
import 'package:get/utils.dart';

import 'components/signup_body.dart';

class SignupScreen extends StatelessWidget {
  static const String routeName = '/signup';

  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('signup'.tr),
      ),
      body: const SignupBody(),
    );
  }
}
