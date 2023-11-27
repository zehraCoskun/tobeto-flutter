import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  const ChartBar({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: const EdgeInsets.all(4),
            child: FractionallySizedBox(
                heightFactor: height,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Theme.of(context).dividerColor,
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(8))),
                ))));
  }
}
