import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // remove const because we have dynamic data
  const StyledText(this.text, {super.key});

  // properties
  // need to be the same name
  // final -> will receive once and no more
  final String text; // it needs to have final

  // methods
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.green, fontSize: 35),
    );
  }
}
