import 'package:flutter/material.dart';
import 'package:todo_app/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AlertDialog(
      backgroundColor: theme.colorScheme.primaryContainer,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new Task",
              ),
            ),

            //buttons -> Save + Cancel
            Row(
              children: [
                //Save
                MyButton(onPressed: () {}, text: "Save"),

                const SizedBox(width: 8),

                //Cancel
                MyButton(onPressed: () {}, text: "Cancel"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
