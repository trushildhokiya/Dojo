import 'package:dojo/models/tasks_data.dart';
import 'package:flutter/material.dart';
import 'package:dojo/screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'models/tasks_data.dart';

void main() => runApp(Dojo());

class Dojo extends StatelessWidget {
  const Dojo({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TasksData(),
      child: MaterialApp(
        home: TaskScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
