import 'package:flutter/material.dart';

class EntryContainer extends StatelessWidget {
  const EntryContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white70,
          border: Border.all(),
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [BoxShadow(color: Colors.blueGrey, blurRadius: 4, spreadRadius: 4, offset: Offset(4, 4))]),
      child: child,
    );
  }
}