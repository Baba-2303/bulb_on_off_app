import 'package:flutter/material.dart';
import 'package:blub_on_off_app/blub_container.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key});
  @override
  State<GradientContainer> createState() {
    return _GradientContainerState();
  }
}

class _GradientContainerState extends State<GradientContainer> {
  List<Color> activeColors = [Colors.brown,Colors.black];
  void switchGradient(bool val){
    setState(() {
      if(val == true){
        activeColors = [Colors.yellow.shade300,Colors.white];
      }
      else{
        activeColors = [Colors.brown,Colors.black];
      }
    });
  }
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          focal: const Alignment(0,-0.24),
          colors: activeColors,
          radius: 1.5,
        ),
      ),
      child: Center(
        child: BulbContainer(switchGradient),
      ),
    );
  }
}
