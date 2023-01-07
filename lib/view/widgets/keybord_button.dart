import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mybutton extends StatefulWidget {
  final String child;
  final VoidCallback onTap;

  const Mybutton({
    Key? key,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  @override
  State<Mybutton> createState() => _MybuttonState();
}

class _MybuttonState extends State<Mybutton> {
  var buttonColor = const Color.fromARGB(255, 255, 255, 255);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
              color: buttonColor, borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: Text(widget.child,
                style: TextStyle(
                  fontSize: 24,
                )),
          ),
        ),
      ),
    );
  }
}
