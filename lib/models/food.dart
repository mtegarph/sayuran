part of 'models.dart';

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String ingredients;
  final String description;
  final int price;
  final double rate;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate});

  @override
  // TODO: implement props
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFood = [
  Food(
      id: 1,
      picturePath:
          'https://www.jessicagavin.com/wp-content/uploads/2019/09/types-of-garlic-1-1200.jpg',
      name: 'Bawang Putih',
      description: 'LTN',
      ingredients: '20',
      price: 10000,
      rate: 4.0),
  Food(
      id: 2,
      picturePath:
          'https://cf.shopee.co.id/file/a237877d9ec245318634ad4182526369',
      name: 'Daun Bayam',
      description: 'LTN',
      ingredients: '20',
      price: 5000,
      rate: 4.0),
  Food(
      id: 3,
      picturePath:
          'https://cdn1-production-images-kly.akamaized.net/AKCiNEVDCbxd1R7DxI9O781vnLc=/640x480/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/1694314/original/037316800_1503982212-067002300_1483451648-Makan-Wortel-Bikin-Sakit-Kuning.jpg',
      name: 'Wortel',
      description: 'LTN',
      ingredients: '10',
      price: 10000,
      rate: 4.0),
  Food(
      id: 4,
      picturePath:
          'https://ecs7.tokopedia.net/img/cache/700/product-1/2018/2/10/0/0_9ab6938b-ca34-4e86-b0f9-3edb83be231c_700_700.jpg',
      name: 'Kentang',
      description: 'LTN',
      ingredients: '15',
      price: 20000,
      rate: 4.0),
  Food(
      id: 5,
      picturePath:
          'https://res.cloudinary.com/dk0z4ums3/image/upload/v1547441614/attached_image/berbagai-nutrisi-di-balik-manfaat-bombay.jpg',
      name: 'Bawang Bombay',
      description: 'LTN',
      ingredients: '15',
      price: 15000,
      rate: 4.0),
];
