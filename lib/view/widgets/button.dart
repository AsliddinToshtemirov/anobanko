import 'package:anobanko/common/colors.dart';
import 'package:flutter/material.dart';

class GradientButtonFb1 extends StatelessWidget {
  final String text;
  final Color color;
  final Function() onPressed;
  const GradientButtonFb1(
      {required this.text,
      required this.color,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 15;

    return SizedBox(
      height: MediaQuery.of(context).size.height / 14,
      width: double.infinity,
      child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: ElevatedButton(
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(color),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(borderRadius)),
                )),
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(
                  color: text == "Начать"
                      ? accentColor
                      : text == "Continue"
                          ? accentColor
                          : primaryColor,
                  fontSize: 16),
            ),
          )),
    );
  }
}
