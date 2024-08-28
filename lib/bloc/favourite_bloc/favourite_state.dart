// part of 'favourite_bloc.dart';

// sealed class FavoriteState extends Equatable {
//   const FavoriteState();

//   @override
//   List<Object> get props => [];
// }

// final class FavoriteInitial extends FavoriteState {}

import 'package:equatable/equatable.dart';
import 'package:todo/model/favourite_model.dart';

enum FavouriteListStatus { loading, success, failure }

class FavouriteState extends Equatable {
  final List<FavouriteModel> favouriteModelList;
  final FavouriteListStatus favouriteListStatus;
  const FavouriteState(
      {this.favouriteModelList = const [],
      this.favouriteListStatus = FavouriteListStatus.loading});
  FavouriteState copyWith(
      {List<FavouriteModel>? favouriteModelList,
      FavouriteListStatus? favouriteListStatus}) {
    return FavouriteState(
        favouriteModelList: favouriteModelList ?? this.favouriteModelList,
        favouriteListStatus: favouriteListStatus ?? this.favouriteListStatus);
  }

  @override
  List<Object?> get props => [favouriteModelList,favouriteListStatus];
}
