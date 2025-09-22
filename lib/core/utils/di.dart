import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/shopping/data/repos/shopping_repo_impl.dart';
import 'dio_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<DioService>(DioService(Dio()));
  getIt.registerSingleton<ShoppingRepoImpl>(
    ShoppingRepoImpl(getIt.get<DioService>()),
  );
}
