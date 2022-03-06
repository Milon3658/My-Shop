class ProductModel {

  late final int id;
  late final String title;
  late final double price;
  late final String description;
  late final String image;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });


  ProductModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    price= double.parse(json['price'].toString());
    description= json['description'];
    image= json['image'];
  }
  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['price'] = price;
    _data['description'] = description;
    _data['image'] = image;
    return _data;
  }
}