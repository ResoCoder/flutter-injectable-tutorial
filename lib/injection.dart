import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable_tutorial/injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjection(String environment) =>
    $initGetIt(getIt, environment: environment);

abstract class Env {
  static const test = 'test';
  static const dev = 'dev';
  static const prod = 'prod';
}
