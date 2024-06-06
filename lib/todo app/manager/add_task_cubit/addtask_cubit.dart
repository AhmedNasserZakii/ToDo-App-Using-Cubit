// ignore_for_file: unused_catch_clause

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

part 'addtask_state.dart';

class AddtaskCubit extends Cubit<AddtaskState> {
  AddtaskCubit() : super(AddtaskInitial());

  Future addTask(
      {required String taskName, required TimeOfDay taskTime}) async {
    final dataBase = FirebaseFirestore.instance;

    final task = <String, dynamic>{
      "taskName": taskName,
      "time": "${taskTime.hour}: ${taskTime.minute}",
    };
    emit(AddtaskLoading());

    try {
      dataBase.collection('tasks').add(task).then(
            (DocumentReference doc) =>
                debugPrint('DocumentSnapshot added with ID: ${doc.id}'),
          );
      emit(AddtaskSuccess());
    } on Exception catch (error) {
      debugPrint('error adding tasks $error');
      emit(AddtaskFailure());
    }
  }
}
