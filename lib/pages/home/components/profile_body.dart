import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';
import 'package:geeblog/pages/home/components/login_card.dart';
import 'package:geeblog/pages/home/components/profile_card.dart';
import 'package:geeblog/pages/home/components/settings.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});
  @override
  Widget build(BuildContext context) {
    final session = supabase.auth.currentSession;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: defaultPadding,
        horizontal: defaultPadding,
      ),
      child: Column(
        children: [
          if (session != null) const ProfileCard(),
          if (session == null) const LoginCard(),
          const SizedBox(height: defaultPadding * 2),
          const Settings(),
        ],
      ),
    );
  }
}
