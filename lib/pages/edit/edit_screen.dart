import 'package:flutter/material.dart';

import 'components/edit_body.dart';

class EditScreen extends StatelessWidget {
  static const String routeName = '/edit';

  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditBody(),
    );
  }
}
