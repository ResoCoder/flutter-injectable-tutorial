import 'package:injectable/injectable.dart';
import 'package:injectable_tutorial/injection.iconfig.dart';

@injectableInit
void configureInjection(String environment) =>
    $initGetIt(environment: environment);

abstract class Env {
  static const test = 'test';
  static const dev = 'dev';
  static const prod = 'prod';
}
