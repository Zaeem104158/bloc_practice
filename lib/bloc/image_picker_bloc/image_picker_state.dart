// part of 'image_picker_bloc.dart';

// sealed class ImagePickerState extends Equatable {
//   const ImagePickerState();
  
//   @override
//   List<Object> get props => [];
// }

// final class ImagePickerInitial extends ImagePickerState {}

import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerState extends Equatable {
  final XFile? file;
  final List<XFile> fileList;

  // Constructor with a default value for fileList
  ImagePickerState({this.file, List<XFile>? fileList})
      : fileList = fileList ?? []; // Default to an empty list if fileList is null

  // Method to create a new instance with modified properties
  ImagePickerState copyWith({XFile? file, List<XFile>? fileList}) {
    return ImagePickerState(
      file: file ?? this.file,
      fileList: fileList ?? this.fileList,
    );
  }

  // List of properties for value comparison
  @override
  List<Object?> get props => [file, fileList];
}
