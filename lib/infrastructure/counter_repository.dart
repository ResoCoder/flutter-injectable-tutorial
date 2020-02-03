import 'package:injectable/injectable.dart';
import 'package:injectable_tutorial/domain/i_counter_repository.dart';

@injectable
class CounterRepository implements ICounterRepository {
  @override
  int getIncrement() => 1;
}
