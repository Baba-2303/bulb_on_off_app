import 'package:flutter/material.dart';

class BulbContainer extends StatefulWidget {
  const BulbContainer(this.switchGradient,{super.key});
  final void Function(bool) switchGradient;
  @override
  State<BulbContainer> createState() {
    return _BulbContainerState();
  }
}

class _BulbContainerState extends State<BulbContainer> {
  var activeImage = "assets/images/off_bulb.png";


  void changeBulb(bool state){
    setState(() {
      if(state == true){
        activeImage = "assets/images/on_bulb.png";
        widget.switchGradient(state);
      }
      else{
        activeImage = "assets/images/off_bulb.png";
        widget.switchGradient(state);
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeImage,width: 200,),
        const SizedBox(height: 30),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: (){changeBulb(true);},
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.yellow),
                foregroundColor: MaterialStatePropertyAll(Colors.black),
              ),
              child: const Text("ON"),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: (){changeBulb(false);},
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.yellow),
                foregroundColor: MaterialStatePropertyAll(Colors.black),
              ),
              child: const Text("OFF"),
            ),

          ],
        )
      ],
    );
  }
}
