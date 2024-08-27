import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/bloc/image_picker_bloc/image_picker_bloc.dart';
import 'package:todo/bloc/image_picker_bloc/image_picker_event.dart';
import 'package:todo/bloc/image_picker_bloc/image_picker_state.dart';
import 'package:todo/bloc/switch_example_bloc/switch_example_bloc.dart';
import 'package:todo/bloc/switch_example_bloc/switch_example_event.dart';
import 'package:todo/bloc/switch_example_bloc/switch_example_state.dart';

class SwitchExample extends StatelessWidget {
  const SwitchExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text("Notification"),
                BlocBuilder<SwitchExampleBloc, SwitchExampleState>(
                    builder: (context, state) {
                  return Switch(
                    value: state.isSwitch,
                    onChanged: (value) {
                      context.read<SwitchExampleBloc>().add(
                            EnableOrDisableSwitchEvent(),
                          );
                    },
                  );
                })
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            BlocBuilder<SwitchExampleBloc, SwitchExampleState>(
                builder: (context, state) {
              return Container(
                height: 200,
                color: Colors.red.withOpacity(state.slider),
              );
            }),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<SwitchExampleBloc, SwitchExampleState>(
                builder: (context, state) {
              return Slider(
                value: state.slider,
                onChanged: (value) {
                  context
                      .read<SwitchExampleBloc>()
                      .add(SliderChangeEvent(sliderValue: value));
                },
              );
            }),
            BlocBuilder<ImagePickerBloc, ImagePickerState>(
              builder: (context, state) {
                return state.file != null
                    ? CircleAvatar(
                        child: Image.file(File(state.file!.path)),
                      )
                    : InkWell(
                        onTap: () {
                          context
                              .read<ImagePickerBloc>()
                              .add(PickImageFromCamera());
                        },
                        child: const Icon(Icons.camera),
                      );
              },
            )
          ],
        ),
      ),
    );
  }
}
