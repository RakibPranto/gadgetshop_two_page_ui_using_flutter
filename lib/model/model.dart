class Model {
  String? img;
  String? name;
  dynamic price;
  String? av;

  Model({this.img, this.name, this.price, this.av});
}

List<Model> model1 = [
  Model(
    img: 'assets/images/a.jpg',
    name: 'AKJ N700NCM2 Wireless\nHeadphones ',
    price: 199.00,
  ),
  Model(
    img: 'assets/images/2.jpg',
    name: 'Havit Gaming headphone ',
    price: 150,
  ),
  Model(
    img: 'assets/images/3.jpg',
    name: 'WH-H910N h.ear on 3 Wireless\nNoise Cancelling Headphones',
    price: 170,
  ),
  Model(
    img: 'assets/images/4.jpg',
    name: 'SureFire Headset',
    price: 160,
  )
];

List<Model> model2 = [
  Model(
      img: 'assets/images/e1.jpg',
      name: 'QKZ DM10 Earphone',
      price: 30,
      av: 'available'),
  Model(
      img: 'assets/images/e2.jpg',
      name: 'Realme Earphone ',
      price: 120,
      av: 'available'),
  Model(
      img: 'assets/images/e3.jpg',
      name: 'White Earphone',
      price: 100,
      av: 'available'),
  Model(
      img: 'assets/images/e4.jpg',
      name: 'White Earphone ',
      price: 90,
      av: 'available'),
];
