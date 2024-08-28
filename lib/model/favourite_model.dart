import 'package:equatable/equatable.dart';

class FavouriteModel extends Equatable {
  final String id;
  final String value;
  final bool isDelete;
  final bool isFavourite;
  const FavouriteModel({
    required this.id,
    required this.value,
    this.isDelete = false,
    this.isFavourite = false,
  });
  FavouriteModel copyWith(
      {String? id, String? value, bool? isDelete, bool? isFavourite}) {
    return FavouriteModel(
        id: id ?? this.id,
        value: value ?? this.value,
        isDelete: isDelete ?? this.isDelete,
        isFavourite: isFavourite ?? this.isFavourite);
  }

  @override
  List<Object?> get props => [id, value, isDelete, isFavourite];
}
