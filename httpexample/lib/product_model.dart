class ProductModel {
  final int id;
  final String title;
  final String description;
  final int price;
  final double discountPercentage;
  final int stock;
  final String brand;
  final String category;
  final String thumbnail;
  final List images;

  ProductModel(
      this.id, this.title, this.description, this.price, this.discountPercentage, this.stock, this.brand, this.category, this.thumbnail, this.images);

  ProductModel.fromJson(Map<String, dynamic> json) //fromJson -> json formatındaki verileri class'a dönüştürür
      : id = json['id'] as int,
        title = json['title'] as String,
        description = json['description'] as String,
        price = json['price'] as int,
        discountPercentage = json['discountPercentage'] as double,
        stock = json['stock'] as int,
        brand = json['brand'] as String,
        category = json['category'] as String,
        thumbnail = json['thumbnail'] as String,
        images = json['images'] as List;

  Map<String, dynamic> toJson() => { //json formatına dönüştürülmüş sınıfın özelliklerini json'a dönüştürür
        'id': id,
        'title': title,
        'description': description,
        'price': price,
        'discountPercentage': discountPercentage,
        'stock': stock,
        'brand': brand,
        'category': category,
        'thumbnail': thumbnail,
        'images': images,
      };
}
