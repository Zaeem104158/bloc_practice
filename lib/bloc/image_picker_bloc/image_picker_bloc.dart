// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';

// part 'image_picker_event.dart';
// part 'image_picker_state.dart';

// class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
//   ImagePickerBloc() : super(ImagePickerInitial()) {
//     on<ImagePickerEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:todo/bloc/image_picker_bloc/image_picker_event.dart';
import 'package:todo/bloc/image_picker_bloc/image_picker_state.dart';
import 'package:todo/utlis/image_picker_utils.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final ImagePickerUtils imagePickerUtils;
  ImagePickerBloc(this.imagePickerUtils) : super(const ImagePickerState()) {
    on<PickImageFromCamera>(_pickImageFromCamera);
  }

  void _pickImageFromCamera(
      ImagePickerEvent event, Emitter<ImagePickerState> emit) async {
    XFile? file = await imagePickerUtils.cameraCapture();
    emit(
      state.copyWith(file: file),
    );
  }
}
