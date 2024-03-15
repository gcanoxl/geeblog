import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const double defaultPadding = 24;
const double defaultOpacity = 0.64;

const preloader = Center(
  child: CircularProgressIndicator(),
);

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
