import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:task3/todo%20app/manager/get_tasks_cubit/get_tasks_cubit.dart';

import '../core/utils/colors.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 20,
      ),
      child: BlocBuilder<GetTasksCubit, GetTasksState>(
        builder: (context, state) {
          return Card(
            child: ListTile(
              title: Text(
                BlocProvider.of<GetTasksCubit>(context).tasks[index].name,
                style: const TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              leading: IconButton(
                icon: const Icon(
                  Icons.check,
                  color: kMainColor,
                  size: 30,
                ),
                onPressed: () {},
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: const BorderSide(
                  color: kDarkGreyColor,
                  width: 2,
                ),
              ),
              trailing: Text(
                BlocProvider.of<GetTasksCubit>(context).tasks[index].time,
                style: const TextStyle(
                  color: kMainColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
