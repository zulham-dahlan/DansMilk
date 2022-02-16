class Milk {
  String milkName;
  String milkTaste;
  String bottleSize;
  String milkPhoto;
  int milkPrice;

  Milk({this.milkName,
      this.milkTaste,
      this.bottleSize,
      this.milkPhoto,
      this.milkPrice});
}

var milkList = [
  Milk(
    milkName: 'Soy Milk',
    milkTaste: 'Coklat',
    bottleSize: '250 ml',
    milkPhoto: 'images/kedelai_coklat.jpeg',
    milkPrice: 6000,
  ),
  Milk(
    milkName: 'Soy Milk',
    milkTaste: 'Original',
    bottleSize: '250 ml',
    milkPhoto: 'images/kedelai_original.jpeg',
    milkPrice: 6000,
  ),
  Milk(
    milkName: 'Soy Milk',
    milkTaste: 'Strobery',
    bottleSize: '250 ml',
    milkPhoto: 'images/kedelai_strobery.jpeg',
    milkPrice: 6000,
  ),
  Milk(
    milkName: 'Cow Milk',
    milkTaste: 'Coklat',
    bottleSize: '250 ml',
    milkPhoto: 'images/sapi_coklat.jpeg',
    milkPrice: 9000,
  ),
  Milk(
    milkName: 'Cow Milk',
    milkTaste: 'Original',
    bottleSize: '250 ml',
    milkPhoto: 'images/sapi_original.jpeg',
    milkPrice: 9000,
  ),
  Milk(
    milkName: 'Cow Milk',
    milkTaste: 'Strobery',
    bottleSize: '250 ml',
    milkPhoto: 'images/sapi_strobery.jpeg',
    milkPrice: 9000,
  ),
];
