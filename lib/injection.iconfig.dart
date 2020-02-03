// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:injectable_tutorial/domain/i_counter_repository.dart';
import 'package:injectable_tutorial/infrastructure/counter_repository.dart';
import 'package:injectable_tutorial/infrastructure/dev_counter_repository.dart';
import 'package:injectable_tutorial/presentation/counter_change_notifier.dart';
import 'package:injectable_tutorial/infrastructure/mock_counter_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void $initGetIt({String environment}) {
  getIt
    ..registerFactory<CounterRepository>(() => CounterRepository())
    ..registerFactory<DevCounterRepository>(() => DevCounterRepository())
    ..registerFactory<CounterChangeNotifier>(
        () => CounterChangeNotifier(getIt<ICounterRepository>()))
    ..registerFactory<MockCounterRepository>(() => MockCounterRepository());
  if (environment == 'test') {
    _registerTestDependencies();
  }
  if (environment == 'dev') {
    _registerDevDependencies();
  }
  if (environment == 'prod') {
    _registerProdDependencies();
  }
}

void _registerTestDependencies() {
  getIt..registerFactory<ICounterRepository>(() => MockCounterRepository());
}

void _registerDevDependencies() {
  getIt..registerFactory<ICounterRepository>(() => DevCounterRepository());
}

void _registerProdDependencies() {
  getIt..registerFactory<ICounterRepository>(() => CounterRepository());
}
