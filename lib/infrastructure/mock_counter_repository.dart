import 'package:injectable/injectable.dart';
import 'package:injectable_tutorial/domain/i_counter_repository.dart';
import 'package:mockito/mockito.dart';

@injectable
class MockCounterRepository extends Mock implements ICounterRepository {}
