import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hours_stable/presentation/stable_bloc/app_state.dart';
import 'package:hours_stable/presentation/stable_bloc/stable_bloc.dart';
class SplashRoute extends StatefulWidget {
  const SplashRoute({super.key});

  @override
  State<SplashRoute> createState() => _SplashRouteState();
}

class _SplashRouteState extends State<SplashRoute> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StableBloc , AppStates>(builder: (context, state) {
      return Scaffold();
    },);
  }
}
