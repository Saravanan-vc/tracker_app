import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:provider/provider.dart';
import 'package:simple/task/controller.dart/task_controller.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Consumer<TaskController>(
        builder: (context, value, widget) {
          return HeatMap(
            size: 28,
            startDate: DateTime.now().subtract(const Duration(days: 40)),
            endDate: DateTime.now().add(const Duration(days: 20)),
            datasets: value.showeDate,
            colorMode: ColorMode.opacity,
            showText: false,
            scrollable: true,
            colorsets: {
              20: Colors.green.shade200,
              40: Colors.greenAccent,
              60: Colors.greenAccent,
              80: Colors.greenAccent,
              100: Colors.green.shade900,
            },
            onClick: (value) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(value.toString())));
            },
          );
        },
      ),
    );
  }
}
