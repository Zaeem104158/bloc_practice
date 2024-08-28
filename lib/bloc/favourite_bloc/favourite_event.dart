// part of 'favorite_bloc.dart';

// sealed class FavoriteEvent extends Equatable {
//   const FavoriteEvent();

//   @override
//   List<Object> get props => [];
// }

import 'package:equatable/equatable.dart';

abstract class FavouriteEvent extends Equatable {
  const FavouriteEvent();
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class FetchFavouriteList extends FavouriteEvent {
  
}
