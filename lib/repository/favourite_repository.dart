import 'package:todo/model/favourite_model.dart';

class FavoutireRepository {
  Future<List<FavouriteModel>> fetchItem() async {
     await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
   return  List.from(List.generate(10, (index){
     return FavouriteModel(id: index.toString(),value: "Item $index");
    })); 
  }
}
