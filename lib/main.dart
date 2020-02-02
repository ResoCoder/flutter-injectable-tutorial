import 'package:flutter/material.dart';
import 'package:injectable_tutorial/infrastructure/counter_repository.dart';
import 'package:injectable_tutorial/presentation/counter_change_notifier.dart';
import 'package:injectable_tutorial/presentation/counter_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ChangeNotifierProvider(
        // Manually passing in the production repository
        create: (_) => CounterChangeNotifier(CounterRepository()),
        child: CounterPage(),
      ),
    );
  }
}
