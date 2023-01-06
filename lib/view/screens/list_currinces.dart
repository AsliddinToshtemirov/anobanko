import 'package:anobanko/common/colors.dart';
import 'package:anobanko/view/widgets/button.dart';
import 'package:flutter/material.dart';

class ListOfCurricies extends StatelessWidget {
  const ListOfCurricies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainBg,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 90),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffF9F9FA),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintStyle: TextStyle(fontSize: 17),
                        suffixIcon: Icon(Icons.dangerous),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50),
                        child: ListView.builder(
                          itemExtent: 80,
                          padding: const EdgeInsets.all(20),
                          itemCount: currency.length,
                          itemBuilder: (BuildContext context, int index) {
                            var indexed = currency[index];
                            return GestureDetector(
                              onTap: () => showModalBottomSheet<void>(
                                isScrollControlled: true,
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    height: double.infinity,
                                    color: const Color(0xff4263EB),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        const SizedBox(
                                          height: 60,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 32),
                                          child: Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () =>
                                                    Navigator.pop(context),
                                                child: const Icon(
                                                  Icons.arrow_back,
                                                  color: Colors.white,
                                                  size: 30,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 30,
                                              ),
                                              const Text(
                                                'Введите сумму перевода',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 18,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 40,
                                        ),
                                        Container(
                                          color: Colors.white.withOpacity(0.3),
                                          height: 5,
                                          width: 50,
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: double.infinity,
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(24.0),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 136,
                                                    width: double.infinity,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Color(0xffF5F7FE),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(20),
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "Выбрана валюта: (USD)",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: const Color(
                                                                      0xff207380)
                                                                  .withOpacity(
                                                                      0.5)),
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Container(
                                                              height: 40,
                                                              width: 40,
                                                              decoration: const BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              30))),
                                                              child:
                                                                  const Center(
                                                                child: Icon(
                                                                  Icons.remove,
                                                                  color: Color(
                                                                      0xff4263EB),
                                                                ),
                                                              ),
                                                            ),
                                                            const Text(
                                                              "500",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900,
                                                                  fontSize: 65),
                                                            ),
                                                            Container(
                                                              height: 40,
                                                              width: 40,
                                                              decoration: const BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              30))),
                                                              child:
                                                                  const Center(
                                                                child: Icon(
                                                                  Icons.add,
                                                                  color: Color(
                                                                      0xff4263EB),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 14,
                                                  ),
                                                  GradientButtonFb1(
                                                    text: "Continue",
                                                    onPressed: () {},
                                                    color: primaryColor,
                                                  ),
                                                  const SizedBox(
                                                    height: 30,
                                                  ),
                                                  Expanded(
                                                    child: GridView.builder(
                                                      physics:
                                                          const NeverScrollableScrollPhysics(),
                                                      gridDelegate:
                                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount: 3,
                                                      ),
                                                      itemCount: 12,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return Container(
                                                          child: Center(
                                                            child: Text(
                                                              index.toString(),
                                                              style:
                                                                  const TextStyle(
                                                                      fontSize:
                                                                          24),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              child: Container(
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 30,
                                        backgroundImage:
                                            AssetImage(indexed.image)),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Text(
                                          indexed.name,
                                          style: const TextStyle(
                                              fontSize: 18,
                                              color: Color(
                                                0xffA2A0A8,
                                              )),
                                        )),
                                    Expanded(
                                        flex: 4,
                                        child: Text(
                                          indexed.status,
                                          style: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        ))
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}

class Currency {
  String image;
  String name;
  String status;
  Currency({
    required this.image,
    required this.name,
    required this.status,
  });
}

List<Currency> currency = [
  Currency(
      image: "assets/flags/iceland.jpg",
      name: "RUB",
      status: "Российский Рубль"),
  Currency(
      image: "assets/flags/indonesia.png", name: "USD", status: "Доллар США"),
  Currency(image: "assets/flags/india.png", name: "IN", status: "Евро"),
  Currency(image: "assets/flags/iran.png", name: "IR", status: "USDT"),
  Currency(image: "assets/flags/Flag.png", name: "IQ", status: "Btc"),
  Currency(image: "assets/flags/irland.png", name: "IE", status: "Другое")
];
