import 'package:flutter/material.dart';
import 'package:todo_app/utils/todo_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(title: Text('To-do App'), centerTitle: true),

      body: ListView(
        children: [
          TodoTile(
            taskName: "Make bed",
            taskCompleted: true,
            onChanged: (val) {},
          ),
          TodoTile(
            taskName: "Make food",
            taskCompleted: false,
            onChanged: (val) {},
          ),
          TodoTile(
            taskName: "Make hair",
            taskCompleted: true,
            onChanged: (val) {},
          ),
        ],
      ),
    );
  }
}
