import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Item"),
      ),
      body: BlocBuilder(builder: (_, state) {
        return ListView.builder(
            itemCount: 10,
            itemBuilder: (_, index) {
              return ListTile(
                title: Checkbox(value: , onChanged: onChanged),
              );
            });
      }),
    );
  }
}
