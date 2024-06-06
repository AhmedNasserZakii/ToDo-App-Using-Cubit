import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task3/todo%20app/manager/add_task_cubit/addtask_cubit.dart';

import '../core/utils/colors.dart';
import '../manager/get_tasks_cubit/get_tasks_cubit.dart';
import 'custom_elevated_button.dart';
import 'custom_text_filed.dart';
import 'time_row_widget.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String taskName = '';
    TimeOfDay selectedTime = TimeOfDay.now();
    return FloatingActionButton(
      onPressed: () {
        BlocProvider.of<GetTasksCubit>(context).getTasks();
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              backgroundColor: Colors.transparent,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 2,
                child: Card(
                  color: kMainColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        CustomTextField(
                          onSubmit: (value) {
                            taskName = value;
                          },
                        ),
                        const SizedBox(height: 20),
                        TimeRowwidget(
                          onTimeSelect: (time) {
                            selectedTime = time;
                          },
                        ),
                        const Spacer(),
                        BlocBuilder<AddtaskCubit, AddtaskState>(
                          builder: (context, state) {
                            return CustomElevatedButton(
                              onPressed: () {
                                BlocProvider.of<AddtaskCubit>(context).addTask(
                                  taskName: taskName,
                                  taskTime: selectedTime,
                                );
                                Navigator.of(context).pop();
                              },
                            );
                          },
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
      backgroundColor: kMainColor,
      shape: const CircleBorder(),
      child: const Icon(
        Icons.add,
        size: 40,
        color: kDarkBlueColor,
      ),
    );
  }
}
