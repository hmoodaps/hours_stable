import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hours_stable/presentation/stable_bloc/app_events.dart';
import 'package:hours_stable/presentation/stable_bloc/app_state.dart';

class StableBloc extends Bloc<AppEvents, AppStates> {
  static StableBloc get(context) => BlocProvider.of<StableBloc>(context);

  StableBloc() : super(InitState()) {
    on<IncreaseNumberEvent>(_onIncreaseNumberEvent);

  }


  _onIncreaseNumberEvent(IncreaseNumberEvent event, Emitter<AppStates> emit){
    emit(IncreaseNumberState());
  }

}
