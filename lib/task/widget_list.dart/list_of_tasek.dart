import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple/task/controller.dart/task_controller.dart';

class ListTask extends StatelessWidget {
  const ListTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskController>(
      builder: (context, value, widget) {
        return ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          shrinkWrap: true,
          itemCount: value.taksbase.length,
          itemBuilder: (context, index) {
            var tuat = value.taksbase[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Card(
                color: Colors.white,
                child: ListTile(
                  title: Text(
                    tuat.task,
                    style: const TextStyle(fontSize: 24),
                  ),
                  leading: Checkbox(
                    activeColor: Colors.white,
                    checkColor: Colors.black,
                    value: tuat.done,
                    onChanged: (_) {
                      value.changeit(index, tuat.done);
                    },
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
