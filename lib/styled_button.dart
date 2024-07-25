import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton(
      {required this.child,
      required this.onPressed,
      super.key,
      required String text});

  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.brown.shade600,
            foregroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)))),
        onPressed: onPressed,
        child: child);
  }
}
