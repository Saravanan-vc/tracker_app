import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple/calander/calander.dart';
import 'package:simple/task/controller.dart/task_controller.dart';
import 'package:simple/task/widget_list.dart/list_of_tasek.dart';

class Tracker extends StatelessWidget {
  const Tracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body:const Column(
        children: [
          Expanded(child: Calendar()),
           Expanded(child: ListTask()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        splashColor: Colors.green,
        elevation: 0.04,
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Consumer<TaskController>(
                    builder: (context, value, widget) {
                      return Column(
                        children: [
                          TextFormField(
                            controller: value.textc,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.black)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: Colors.black))),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                value.addtask(value.textc.text, false);
                                Navigator.pop(context);
                                value.textc.clear();
                              },
                              child: const Text('Summited'))
                        ],
                      );
                    },
                  ),
                );
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
