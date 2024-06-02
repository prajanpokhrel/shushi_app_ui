// ignore_for_file: public_member_api_docs, sort_constructors_first

class Food {
  String name;
  String imgPath;
  String price;
  String rating;

  Food({
    required this.name,
    required this.imgPath,
    required this.price,
    required this.rating,
  });

  String get _name => name;
  String get _imgPath => name;
  String get _price => name;
  String get _rating => name;
}
