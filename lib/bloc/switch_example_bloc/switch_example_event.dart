// part of 'switch_example_bloc.dart';

// sealed class SwitchExampleEvent extends Equatable {
//   const SwitchExampleEvent();

//   @override
//   List<Object> get props => [];
// }

// class NotificationSwitchEvent extends SwitchExampleEvent {}
// class SliderChangeEvent extends SwitchExampleEvent{
//   final double sliderValue;
//   const SliderChangeEvent({required this.sliderValue});
//   @override
//   List<Object?> get props => [sliderValue];
// }

import 'package:equatable/equatable.dart';

abstract class SwitchExampleEvent extends Equatable {
  const SwitchExampleEvent();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class EnableOrDisableSwitchEvent extends SwitchExampleEvent{}

class SliderChangeEvent extends SwitchExampleEvent{
  final double sliderValue;
  const SliderChangeEvent({required this.sliderValue});
  @override
  List<Object?> get props => [sliderValue];
}