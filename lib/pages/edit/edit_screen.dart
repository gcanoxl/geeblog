import 'package:flutter/material.dart';

import 'components/edit_body.dart';

class EditScreen extends StatelessWidget {
  static const String routeName = '/edit';

  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.keyboard_return),
        ),
        title: const Text('Edit'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.save),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.publish),
          ),
        ],
      ),
      body: const EditBody(),
    );
  }
}
