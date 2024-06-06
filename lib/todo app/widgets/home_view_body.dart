import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:task3/todo%20app/manager/get_tasks_cubit/get_tasks_cubit.dart';

import '../core/utils/colors.dart';
import 'home_container.dart';
import 'tasks_list_tile.dart';

//https://dribbble.com/shots/19058418-Todo-APP
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 24),
                Text(
                  'Doingdo',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: kDarkBlueColor,
                  ),
                ),
                SizedBox(height: 24),
                HomeContainer(),
                SizedBox(height: 24),
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'You have numbers tasks for today',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: kDarkBlueColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: BlocBuilder<GetTasksCubit, GetTasksState>(
            builder: (context, state) {
              if (state is GettaskLoading) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: kMainColor,
                ));
              } else if (state is GettaskSuccess) {
                if (BlocProvider.of<GetTasksCubit>(context).tasks.isEmpty) {
                  return const Center(
                    child: Text(
                      'There is No Data Yet ',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  );
                }
                return ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount:
                      BlocProvider.of<GetTasksCubit>(context).tasks.length,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      direction: DismissDirection.endToStart,
                      key: UniqueKey(),
                      background: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.delete,
                          size: 50,
                        ),
                      ),
                      child: CustomListTile(
                        index: index,
                      ),
                      onDismissed: (direction) {
                        BlocProvider.of<GetTasksCubit>(context).deleteTask(
                          id: BlocProvider.of<GetTasksCubit>(context)
                              .tasks[index]
                              .id,
                        );
                      },
                    );
                  },
                );
              } else if (state is GettaskFailure) {
                return const Center(
                  child: Text('something wrong'),
                );
              } else {
                return const Center(
                  child: Text('msh sh8ala ay sa7by'),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
