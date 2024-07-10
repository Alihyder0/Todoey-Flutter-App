class Task {
  Task({this.isDone = false, this.name});
  final String? name;
  bool isDone;

  void toggleDone() {
    isDone = !isDone;
  }
}
