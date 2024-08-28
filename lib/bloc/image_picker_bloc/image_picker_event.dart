// part of 'image_picker_bloc.dart';

// sealed class ImagePickerEvent extends Equatable {
//   const ImagePickerEvent();

//   @override
//   List<Object> get props => [];
// }

import 'package:equatable/equatable.dart';


abstract class ImagePickerEvent extends Equatable {
  const ImagePickerEvent();
  @override
  List<Object?> get props => [];
}

class PickImageFromCamera extends ImagePickerEvent {}

class PickImageFromGallery extends ImagePickerEvent {}

class PickImageMultipleFromGallery extends ImagePickerEvent {}
