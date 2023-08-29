import 'package:get_it/get_it.dart';

import '../../data/repository/dummy_repository.dart';
import '../../data/source/remote/api/dummy_api.dart';
import 'component/database_component.dart';
import 'component/network_service_component.dart';

T get<T extends Object>() => GetIt.I<T>();

Future<void> setupDI({bool isDebug = true}) async {
  GetIt.I
    ..registerSingleton(createNetworkService(isDebug: isDebug))
    ..registerSingleton(await initDatabase());

  GetIt.I
    ..registerFactory(() => DummyApi(get()))
    ..registerFactory(() => DummyRepository(get()));
}
