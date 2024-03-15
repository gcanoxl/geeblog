import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';
import 'package:get/get.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  bool isLoading = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPwController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    confirmPwController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: defaultPadding,
                horizontal: defaultPadding,
              ),
              child: Column(
                children: [
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: emailController,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.email),
                      label: Text('email'.tr),
                    ),
                    validator: (value) =>
                        GetUtils.isEmail(value!) ? null : 'invalid_email'.tr,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: usernameController,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.person),
                      label: Text('username'.tr),
                    ),
                    validator: (value) {
                      RegExp ipExp = RegExp('^[\u4e00-\u9fa5a-zA-z0-9_]{2,24}');
                      return ipExp.hasMatch(value!)
                          ? null
                          : 'invalid_username'.tr;
                    },
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock),
                      label: Text('password'.tr),
                    ),
                    validator: (value) {
                      return value!.length > 6 ? null : 'password_too_short'.tr;
                    },
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: confirmPwController,
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock),
                      label: Text('confirm_password'.tr),
                    ),
                    validator: (value) {
                      if (value != passwordController.text) {
                        return 'password_not_match'.tr;
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: defaultPadding * 2),
                  ElevatedButton(
                    onPressed: signUp,
                    child: Text('signup'.tr),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  signUp() async {
    final username = usernameController.text;
    final email = emailController.text;
    final password = passwordController.text;
    try {
      await supabase.auth.signUp(
        email: email,
        password: password,
        data: {
          'username': username,
        },
      );
      Get.offAllNamed('/home');
    } catch (e) {
      errorSnackBar(e.toString());
    }
  }
}
