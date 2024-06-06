part of 'get_tasks_cubit.dart';

@immutable
sealed class GetTasksState {}

final class GetTasksInitial extends GetTasksState {}

final class GettaskLoading extends GetTasksState {}

final class GettaskSuccess extends GetTasksState {}

final class GettaskFailure extends GetTasksState {}
