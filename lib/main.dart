import 'package:flutter/material.dart';
import 'package:injectable_tutorial/infrastructure/counter_repository.dart';
import 'package:injectable_tutorial/infrastructure/dev_counter_repository.dart';
import 'package:injectable_tutorial/injection.dart';
import 'package:injectable_tutorial/injection.iconfig.dart';
import 'package:injectable_tutorial/presentation/counter_change_notifier.dart';
import 'package:injectable_tutorial/presentation/counter_page.dart';
import 'package:provider/provider.dart';

void main() {
  configureInjection(Env.dev);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ChangeNotifierProvider(
        create: (_) => getIt<CounterChangeNotifier>(),
        child: CounterPage(),
      ),
    );
  }
}
