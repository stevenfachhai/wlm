import 'package:get_it/get_it.dart';
import 'package:wlm/services/user_setting.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton(() => UserSettings());
}
