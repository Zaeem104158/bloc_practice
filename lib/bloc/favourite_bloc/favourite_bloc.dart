import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part '../favorite_bloc/favorite_event.dart';
part 'favourite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(FavoriteInitial()) {
    on<FavoriteEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
