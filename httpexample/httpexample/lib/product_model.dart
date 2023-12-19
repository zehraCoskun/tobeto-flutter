class ProductModel {
  final int id;
  final String title;
  final String description;
  final double price;
  final double discountPercentage;
  //final double raiting;
  final int stock;
  final String brand;
  final String category;
  final String thumbnail;
  final List images;

  ProductModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.discountPercentage,
      //required this.raiting,
      required this.stock,
      required this.brand,
      required this.category,
      required this.thumbnail,
      required this.images});
}
