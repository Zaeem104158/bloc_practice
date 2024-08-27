// part of 'switch_example_bloc.dart';

// sealed class SwitchExampleState extends Equatable {
//   final bool isSwitchEnable;
//   const SwitchExampleState({
//     this.isSwitchEnable = false
//   });

//   @override
//   List<Object> get props => [isSwitchEnable];
// }

// final class SwitchExampleInitial extends SwitchExampleState {

// }

import 'package:equatable/equatable.dart';

class SwitchExampleState extends Equatable {
  final bool isSwitch;
  final double slider;
  const SwitchExampleState({this.isSwitch = false, this.slider = 0.0});
  SwitchExampleState copyWith({bool? isSwitch, double? slider}) {
    return SwitchExampleState(
      isSwitch: isSwitch ?? this.isSwitch,
      slider: slider ?? this.slider,
    );
  }

  @override
  List<Object?> get props => [isSwitch,slider];
}
