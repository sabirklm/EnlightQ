import 'package:flutter/material.dart';

class DecoratedContainer extends StatelessWidget {
  final Widget? child;
  const DecoratedContainer({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.black12,
        border: Border.all(
          width: 2.0,
          color: Colors.grey,
        ),
      ),
      child: child,
    );
  }
}
