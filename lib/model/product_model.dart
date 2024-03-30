class ProductClass {
  final int id;
  final String title;
  final int price;
  final String description;
  final String images;
  final String creationAt;
  final String updatedAt;

  ProductClass({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.images,
    required this.creationAt,
    required this.updatedAt,
  });

  factory ProductClass.fromJson(Map<String, dynamic> json) {
    return ProductClass(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      images: json['category']['image'],
      creationAt: json['creationAt'],
      updatedAt: json['updatedAt'],
    );
  }
}
