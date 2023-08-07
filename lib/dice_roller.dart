import 'package:flutter/material.dart';
import 'dart:math';

// making that because it's need to create the object once at time
// that file is executed.
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// _ -> means that this file is private
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceFace = 1;

  void rollDice() {
    setState(() {
      currentDiceFace = randomizer.nextInt(6) + 1;
    });
    // print('entrou');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize:
          MainAxisSize.min, // the main axis will take the min size possible
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceFace.png',
          width: 200,
        ),
        const SizedBox(height: 10),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                    top: 20, left: 25, right: 25, bottom: 20),
                foregroundColor: Colors.white, // color of the text
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
