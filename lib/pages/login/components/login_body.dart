import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';
import 'package:get/get.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: defaultPadding * 2,
            horizontal: defaultPadding,
          ),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    icon: const Icon(Icons.person),
                    label: Text('username'.tr),
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.lock),
                    label: Text('password'.tr),
                  ),
                ),
                const SizedBox(height: defaultPadding),
                InkWell(
                  onTap: () {
                    Get.toNamed('/signup');
                  },
                  child: Text(
                    'signup_slogon'.tr,
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(height: defaultPadding),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('login'.tr),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
