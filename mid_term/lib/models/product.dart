class Product {
  dynamic id;
  String? title;
  dynamic? price;
  String? description;
  String? category;
  String? image;
  Map<String, double>? rating;
  bool isFavorite = false;

  Product(this.id,this.title,this.price,this.description,this.category,this.image,this.rating,this.isFavorite);
}
