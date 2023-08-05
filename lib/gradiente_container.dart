import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

// basically when we use CONST we tell to the flutter that the
// specific data can be cached into device memory

//Const:
/*
If the value you have is computed 
at runtime (new DateTime.now(), for example), 
you can not use a const for it. However, 
if the value is known at compile time (const a = 1;), 
then you should use const over final. There are 2 
other large differences between const and final. Firstly, 
if you're using const inside a class, you have to declare it as static const rather than just const. Secondly, 
if you have a const collection, everything inside of that is in const. 
If you have a final collection, everything inside of that is not final. 
*/

//Final:
/*
final should be used over const if you don't know the value at compile time, 
and it will be calculated/grabbed at runtime. 
If you want an HTTP response that can't be changed, 
if you want to get something from a database, 
or if you want to read from a local file, use final. 
Anything that isn't known at compile time should be final over const.
*/

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  GradientContainer.purple({super.key})
      : colors = [Colors.orange, Colors.black45];

  // or we can write like this
  // const GradientContainer({key}): super(key: key)
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  // }
}
