import 'package:geeblog/constants.dart';
import 'package:geeblog/models/user.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;

class AuthController extends GetxController {
  final Rx<Session?> _session = Rx<Session?>(supabase.auth.currentSession);
  final Rx<User?> _profile = Rx<User?>(null);

  Session? get session => _session.value;
  User? get profile => _profile.value;

  _updateProfile() async {
    if (_session.value == null) {
      _profile.value = null;
    } else {
      final userId = _session.value!.user.id;
      final data =
          await supabase.from('profiles').select().eq('id', userId).single();
      _profile.value = User.fromJson(data);
    }
  }

  @override
  onInit() {
    _updateProfile();
    super.onInit();
  }

  signOut() async {
    await supabase.auth.signOut();
    _session.value = null;
    await _updateProfile();
  }

  signIn({
    required String email,
    required String password,
  }) async {
    try {
      await supabase.auth.signInWithPassword(email: email, password: password);
      _session.value = supabase.auth.currentSession;
      _updateProfile();
    } catch (e) {
      rethrow;
    }
  }
}
