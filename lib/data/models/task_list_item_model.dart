enum Status { empty, full, inProcess }

class TaskListItemModel {
  final int index;
  final String title;
  final double tons;
  final Status status;

  TaskListItemModel({
    required this.index,
    required this.title,
    required this.tons,
    required this.status,
  });
}
