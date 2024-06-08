import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key, required this.onPressed,
  });
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 100.0),
          SizedBox(
              width: 250,
              height: 70,
              child: ElevatedButton(onPressed: onPressed, child: Text("Next",style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),))),
        ],
      ),
    );
  }
}