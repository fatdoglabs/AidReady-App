import 'package:aid_ready/core/routes/router.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
Future<void> injectDependencies() async {
  getIt.registerLazySingleton<AidRouter>(AidRouter.new);
}
