class Shop {
  final String id;
  final String name;
  final String description;
  final Map<String, dynamic> location;
  final Map<String, dynamic> contact;
  final Map<String, dynamic> hours;
  final List<String> categories;
  final double rating;
  final bool verified;
  final String ownerId;
  final DateTime createdAt;

  Shop({
    required this.id,
    required this.name,
    required this.description,
    required this.location,
    required this.contact,
    required this.hours,
    required this.categories,
    required this.rating,
    required this.verified,
    required this.ownerId,
    required this.createdAt,
  });

  factory Shop.fromJson(Map<String, dynamic> json) {
    return Shop(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      location: json['location'],
      contact: json['contact'],
      hours: json['hours'],
      categories: List<String>.from(json['categories']),
      rating: json['rating'].toDouble(),
      verified: json['verified'],
      ownerId: json['owner_id'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'location': location,
      'contact': contact,
      'hours': hours,
      'categories': categories,
      'rating': rating,
      'verified': verified,
      'owner_id': ownerId,
      'created_at': createdAt.toIso8601String(),
    };
  }
}
