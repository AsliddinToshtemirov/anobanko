import 'package:anobanko/common/colors.dart';
import 'package:anobanko/view/screens/list_currinces.dart';
import 'package:anobanko/view/widgets/button.dart';
import 'package:anobanko/view/widgets/select_currency.dart';
import 'package:flutter/material.dart';

class CurrencyChoose extends StatelessWidget {
  const CurrencyChoose({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBg,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 32.0, right: 32, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "В какой валюте отправить",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            const Text(
              "Выберите, в какой валюте Вам удобно\nвнести перевод",
              style: TextStyle(fontWeight: FontWeight.w200, fontSize: 16),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            InkWell(
              child: const Select(),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const ListOfCurricies())),
            ),
            Expanded(
              child: Container(),
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
