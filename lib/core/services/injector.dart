import 'package:aid_ready/core/routes/router.dart';
import 'package:aid_ready/core/utils/strings.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive_flutter/hive_flutter.dart';

GetIt getIt = GetIt.instance;
Future<void> injectDependencies() async {
  getIt.registerLazySingleton<AidRouter>(AidRouter.new);
  await Hive.initFlutter();
  await Hive.openBox(kBoxName);
  getIt.registerLazySingleton<GoogleSignIn>(() => GoogleSignIn(scopes: [
        'https://www.googleapis.com/auth/userinfo.email',
        'https://www.googleapis.com/auth/userinfo.profile',
      ]));
}
