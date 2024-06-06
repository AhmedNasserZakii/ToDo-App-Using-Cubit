// ignore_for_file: unused_catch_clause

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:task3/todo%20app/core/models.dart/dummy_tasks.dart';

part 'get_tasks_state.dart';

int a = 0;

class GetTasksCubit extends Cubit<GetTasksState> {
  GetTasksCubit() : super(GetTasksInitial());
  List<Task> tasks = [];
  Future getTasks() async {
    final dataBase = FirebaseFirestore.instance;
    emit(GettaskLoading());
    try {
      final response = await dataBase.collection('tasks').get();

      tasks = response.docs.map(
        (doc) {
          return Task(
              id: doc.id,
              name: doc.data()['taskName'] as String,
              time: doc.data()['time'] as String);
        },
      ).toList();
      debugPrint('getTasks response = $tasks');

      emit(GettaskSuccess());
    } on Exception catch (e) {
      emit(GettaskFailure());
      debugPrint('getTasks error = $e');
    }
  }

  Future deleteTask({required String id}) async {
    final dataBase = FirebaseFirestore.instance;

    await dataBase.collection('tasks').doc(id).delete();
  }
}
