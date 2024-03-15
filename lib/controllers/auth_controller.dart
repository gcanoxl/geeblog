import 'package:geeblog/constants.dart';
import 'package:geeblog/models/user.dart';
import 'package:get/get.dart';

class AuthController extends GetxController with StateMixin<User> {
  final session = supabase.auth.currentSession;
  @override
  Future<void> onInit() async {
    if (supabase.auth.currentSession == null) return;

    final userId = supabase.auth.currentUser!.id;

    final data =
        await supabase.from('profiles').select().eq('id', userId).single();
    final user = User.fromJson(data);

    change(user, status: RxStatus.success());

    super.onInit();
  }
}
