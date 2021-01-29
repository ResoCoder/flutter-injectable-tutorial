import 'package:injectable/injectable.dart';
import 'package:injectable_tutorial/domain/i_counter_repository.dart';
import 'package:mockito/mockito.dart';

@Environment("test")
@Injectable(as: ICounterRepository)
class MockCounterRepository extends Mock implements ICounterRepository {}
