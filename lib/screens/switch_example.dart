import 'dart:developer';
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
                  buildWhen: (previous, current) => previous.isSwitch != current.isSwitch,
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
              buildWhen: (previous, current) => previous.slider != current.slider,
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
                buildWhen: (previous, current) => previous.slider != current.slider,
                builder: (context, state) {
                  log("message");
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
                buildWhen: (previous, current) => previous.fileList != current.fileList,
              builder: (context, state) {
                return state.file != null
                    ? Image.file(File(state.file!.path),)
                    : InkWell(
                        onTap: () {
                          context
                              .read<ImagePickerBloc>()
                              .add(PickImageMultipleFromGallery());
                        },
                        child: const Icon(Icons.camera),
                      );
              },
            ),
            BlocBuilder<ImagePickerBloc, ImagePickerState>(
              builder: (context, state) {

                  return state.fileList.isNotEmpty ? SizedBox(
                    height: 300,
                    child: ListView.builder(itemCount: state.fileList.length,itemBuilder:(_,index){
                    return Image.file(File(state.fileList[index].path.toString()),);
                                    }),
                  ): const SizedBox.shrink();
                    
              },
            )
          ],
        ),
      ),
    );
  }
}
