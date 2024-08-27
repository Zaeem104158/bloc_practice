import 'package:flutter/material.dart';
import 'package:todo/bloc/counter_bloc/counter_bloc.dart';
import 'package:todo/bloc/image_picker_bloc/image_picker_bloc.dart';
import 'package:todo/bloc/switch_example_bloc/switch_example_bloc.dart';
import 'package:todo/screens/counter_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/screens/switch_example.dart';
import 'package:todo/utlis/image_picker_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CounterBloc(),
        ),
        BlocProvider(
          create: (_) => SwitchExampleBloc(),
        ),
        BlocProvider(
          create: (_) => ImagePickerBloc(ImagePickerUtils()),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SwitchExample(),
      ),
    );
  }
}
