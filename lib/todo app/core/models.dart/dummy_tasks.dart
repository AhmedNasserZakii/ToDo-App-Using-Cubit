class Task {
  final String id;
  final String name;
  final String time;

  Task({required this.id, required this.name, required this.time});

  @override
  String toString() {
    return 'Task{id: $id, taskName: $name, taskTime:$time}';
  }
}

List<Task> tasks = [];
