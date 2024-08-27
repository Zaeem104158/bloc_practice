// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';

// part 'switch_example_event.dart';
// part 'switch_example_state.dart';

// class SwitchExampleBloc extends Bloc<SwitchExampleEvent, SwitchExampleState> {
//   SwitchExampleBloc() : super(SwitchExampleInitial()) {
//     on<SwitchExampleEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/switch_example_bloc/switch_example_event.dart';
import 'package:todo/bloc/switch_example_bloc/switch_example_state.dart';

class SwitchExampleBloc extends Bloc<SwitchExampleEvent, SwitchExampleState> {
  SwitchExampleBloc() : super(const SwitchExampleState()) {
    on<EnableOrDisableSwitchEvent>(enableOrDisableNotification);
    on<SliderChangeEvent>(sliderValueChange);
  }

  void enableOrDisableNotification(
      SwitchExampleEvent events, Emitter<SwitchExampleState> emit) {
    emit(
      state.copyWith(isSwitch: !state.isSwitch),
    );
  }

    void sliderValueChange(
        SliderChangeEvent events, Emitter<SwitchExampleState> emit) {
      emit(
        state.copyWith(slider: events.sliderValue),
      );
    }
}
