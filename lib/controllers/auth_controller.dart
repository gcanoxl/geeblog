import 'package:geeblog/constants.dart';
import 'package:geeblog/models/user.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;

class AuthController extends GetxController {
  final Rx<Session?> session = Rx<Session?>(supabase.auth.currentSession);

  Future<User> getUserById(String userId) async {
    if (session.value == null) {
      throw Exception('User is not logged in');
    }
    final userId = session.value!.user.id;
    final data =
        await supabase.from('profiles').select().eq('id', userId).single();
    return User.fromJson(data);
  }

  signOut() async {
    await supabase.auth.signOut();
    session.value = null;
  }

  signIn({
    required String email,
    required String password,
  }) async {
    try {
      await supabase.auth.signInWithPassword(email: email, password: password);
      session.value = supabase.auth.currentSession;
    } catch (e) {
      rethrow;
    }
  }
}
