class Product {
  final int id; // Unique identifier for the product
  final String name;
  final String description;
  final String imageUrl;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
  });

  // Method to represent the product as a string
  @override
  String toString() {
    return 'ID: $id, Name: $name, Description: $description, Price: \$${price.toStringAsFixed(2)}, Image: $imageUrl';
  }
}
