import 'package:flutter/material.dart';
import 'package:geeblog/constants.dart';
import 'package:geeblog/pages/home/components/login_card.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: defaultPadding,
        horizontal: defaultPadding,
      ),
      child: Column(
        children: [
          LoginCard(),
        ],
      ),
    );
  }
}
