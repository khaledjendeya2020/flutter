class Product {
  // "id": 1,
  //   "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
  //   "price": 109.95,
  //   "description":
  //       "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
  //   "category": "men's clothing",
  //   "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
  //   "rating": {"rate": 3.9, "count": 120}

  String id;
  String title;
  String price;
  String description;
  String categery;
  String image;
  bool isFavourite;
  int count = 0;
  Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.categery,
      required this.image,
      this.isFavourite = false,
      this.count = 0});
}
