class Tasks{
  final String taskName;
  bool isDone;
  // Function ToggleCheckBoxState;
  Tasks({required this.taskName,this.isDone=false});

  void toggleDone(){
    isDone=!isDone;
  }
}