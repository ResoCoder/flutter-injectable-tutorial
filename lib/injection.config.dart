// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'presentation/counter_change_notifier.dart';
import 'infrastructure/counter_repository.dart';
import 'infrastructure/dev_counter_repository.dart';
import 'domain/i_counter_repository.dart';
import 'infrastructure/mock_counter_repository.dart';

/// Environment names
const _prod = 'prod';
const _dev = 'dev';
const _test = 'test';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<ICounterRepository>(() => CounterRepository(),
      registerFor: {_prod});
  gh.factory<ICounterRepository>(() => DevCounterRepository(),
      registerFor: {_dev});
  gh.factory<ICounterRepository>(() => MockCounterRepository(),
      registerFor: {_test});
  gh.factory<CounterChangeNotifier>(
      () => CounterChangeNotifier(get<ICounterRepository>()));
  return get;
}
