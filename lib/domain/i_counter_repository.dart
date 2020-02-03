import 'package:injectable/injectable.dart';
import 'package:injectable_tutorial/infrastructure/counter_repository.dart';
import 'package:injectable_tutorial/infrastructure/dev_counter_repository.dart';
import 'package:injectable_tutorial/infrastructure/mock_counter_repository.dart';
import 'package:injectable_tutorial/injection.dart';

@Bind.toType(MockCounterRepository, env: Env.test)
@Bind.toType(DevCounterRepository, env: Env.dev)
@Bind.toType(CounterRepository, env: Env.prod)
@injectable
abstract class ICounterRepository {
  int getIncrement();
}
