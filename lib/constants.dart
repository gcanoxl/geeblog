import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const double defaultPadding = 24;

final supabase = Supabase.instance.client;

void errorSnackBar(String msg) {
  Get.snackbar(
    '${'error'.tr}: ',
    msg,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.red,
    colorText: Colors.white,
  );
}
