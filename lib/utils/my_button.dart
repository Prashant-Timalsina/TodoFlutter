import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const MyButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MaterialButton(
      onPressed: onPressed,
      color: theme.colorScheme.primary,
      textColor: theme.colorScheme.onPrimary,
      child: Text(text),
    );
  }
}
