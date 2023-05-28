class Tasks{
  final String name;
  bool isDone;


  Tasks(this.name, this.isDone);

  void toggleDone() {
    isDone = !isDone;
  }
}