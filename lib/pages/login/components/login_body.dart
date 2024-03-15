import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';
import 'package:geeblog/controllers/auth_controller.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _isLoading = false;
  final authController = Get.find<AuthController>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
                  controller: emailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.email),
                    label: Text('email'.tr),
                  ),
                  validator: (value) {
                    return GetUtils.isEmail(value!) ? null : 'invalid_email'.tr;
                  },
                ),
                TextFormField(
                  controller: passwordController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.lock),
                    label: Text('password'.tr),
                  ),
                  validator: (value) {
                    return value!.length > 6 ? null : 'password_too_short'.tr;
                  },
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
                  onPressed: _isLoading ? null : login,
                  child: Text('login'.tr),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  login() async {
    setState(() {
      _isLoading = true;
    });
    try {
      await supabase.auth.signInWithPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Get.offAllNamed('/home');
      authController.updateUser();
    } on AuthException catch (e) {
      errorSnackBar(e.message);
    } catch (e) {
      errorSnackBar(e.toString());
    }
    setState(() {
      _isLoading = false;
    });
  }
}
