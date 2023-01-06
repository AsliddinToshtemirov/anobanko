import 'package:flutter/material.dart';

class Select extends StatelessWidget {
  const Select({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
          color: Color(0xffF9F9FA),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Выбрать валюту",
              style: TextStyle(fontSize: 16, color: Color(0xffA2A0A8)),
            ),
            Icon(Icons.keyboard_arrow_down_sharp, color: Color(0xffA2A0A8))
          ],
        ),
      ),
    );
  }
}
