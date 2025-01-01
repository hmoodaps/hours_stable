import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hours_stable/presentation/stable_bloc/app_state.dart';
import 'package:hours_stable/presentation/stable_bloc/stable_bloc.dart';

import '../../presentation/stable_bloc/app_events.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal();

  static const MyApp _app = MyApp._internal();

  factory MyApp() => _app;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StableBloc(),
      child: MaterialApp(
        home: MyApplication(),
      ),
    );
  }
}

class MyApplication extends StatefulWidget {
  const MyApplication({super.key});

  @override
  State<MyApplication> createState() => _MyApplicationState();
}

class _MyApplicationState extends State<MyApplication> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
   StableBloc bloc =  StableBloc.get(context);
    return BlocBuilder<StableBloc, AppStates>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.blue,
          title: Text('Horse Stable'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
              x++ ;
              bloc.add(IncreaseNumberEvent());
          },
          child: Icon(Icons.add),
        ),
        body: Center(
          child: Text(
            '$x',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
