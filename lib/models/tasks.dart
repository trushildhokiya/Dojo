class Task{

  late String name;
  late bool isCompleted;

  Task({required this.name, this.isCompleted = false});

  void toggleIsCompleted(){
    isCompleted = !isCompleted;
  }

}