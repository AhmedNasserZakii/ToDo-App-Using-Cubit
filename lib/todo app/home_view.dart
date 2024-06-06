import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:task3/todo%20app/core/utils/colors.dart';
import 'package:task3/todo%20app/manager/add_task_cubit/addtask_cubit.dart';
import 'package:task3/todo%20app/manager/get_tasks_cubit/get_tasks_cubit.dart';

import 'package:task3/todo%20app/widgets/home_view_body.dart';

import 'widgets/custom_floating_action_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreyColor,
      body: BlocListener<AddtaskCubit, AddtaskState>(
        listener: (context, state) {
          if (state is AddtaskSuccess) {
            BlocProvider.of<GetTasksCubit>(context).getTasks();
          }
        },
        child: const HomeViewBody(),
      ),
      floatingActionButton: const CustomFloatingActionButton(),
    );
  }
}
