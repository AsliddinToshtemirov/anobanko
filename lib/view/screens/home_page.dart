import 'package:anobanko/common/colors.dart';
import 'package:anobanko/view/screens/currency_select_page.dart';
import 'package:anobanko/view/widgets/button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBg,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 68.0, right: 32, left: 32, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Добро пожаловать в АНОБАНКо!",
              style: TextStyle(
                  fontWeight: FontWeight.w500, color: Color(0xffA2A0A8)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            const Text(
              "В этом\nприложении\nможно сделать международный денежный\nперевод",
              maxLines: 6,
              style: TextStyle(
                  fontSize: 32, fontWeight: FontWeight.w800, height: 1.3),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            GradientButtonFb1(
              text: "Начать",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CurrencyChoose()));
              },
              color: primaryColor,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 243, 241, 245),
                  radius: 90,
                  backgroundImage: AssetImage("assets/Selfie.png"),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "В любой момент Вы можете\nнаписать в службу поддержки",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffA2A0A8),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            GradientButtonFb1(
              text: "Задать вопрос",
              onPressed: () {},
              color: secondButtonColors,
            )
          ],
        ),
      ),
    );
  }
}
