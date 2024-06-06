part of 'addtask_cubit.dart';

@immutable
sealed class AddtaskState {}

final class AddtaskInitial extends AddtaskState {}

final class AddtaskLoading extends AddtaskState {}

final class AddtaskSuccess extends AddtaskState {}

final class AddtaskFailure extends AddtaskState {}
