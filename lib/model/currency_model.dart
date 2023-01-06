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
      image: "assets/flags/indonesia.png", name: "USD", status: "Доллар США")
];
