import 'package:flutter/material.dart';
import 'package:simple/task/controller.dart/taskclass.dart';

class TaskController extends ChangeNotifier {
  TextEditingController textc = TextEditingController();
  List<Taskclass> taksbase = [
    Taskclass(task: 'Phoebus', done: false),
    Taskclass(task: 'Phoebus', done: false),
    Taskclass(task: 'Phoebus', done: false),
    Taskclass(task: 'Phoebus', done: false)
  ];

  void changeit(int index, bool donee) {
    taksbase[index].done = !donee;
    int a = index == 0 ? 2 * 10 : index * 20;
    showeDate.addAll({DateTime(2024, 10, 4): a});
    notifyListeners();
  }

  void addtask(String task, bool done) {
    taksbase.add(Taskclass(task: task, done: done));
    notifyListeners();
  }

  Map<DateTime, int> showeDate = {
    DateTime(2024, 9, 24): 20,
    DateTime(2024, 9, 25): 20,
    DateTime(2024, 9, 26): 40,
    DateTime(2024, 9, 27): 60,
    DateTime(2024, 9, 28): 80,
    DateTime(2024, 9, 29): 100,
    DateTime(2024, 9, 30): 20
  };
  void showdate() {}
}
