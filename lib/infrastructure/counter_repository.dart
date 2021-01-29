import 'package:injectable/injectable.dart';
import 'package:injectable_tutorial/domain/i_counter_repository.dart';


@Environment("prod")
@Injectable(as: ICounterRepository)
class CounterRepository implements ICounterRepository {
  @override
  int getIncrement() => 1;
}
