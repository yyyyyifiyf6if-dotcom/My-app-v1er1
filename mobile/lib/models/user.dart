class User {
  final String id;
  final String email;
  final String name;
  final String? phone;
  final Map<String, dynamic>? location;
  final List<String>? preferences;
  final List<String>? wishlist;
  final DateTime createdAt;

  User({
    required this.id,
    required this.email,
    required this.name,
    this.phone,
    this.location,
    this.preferences,
    this.wishlist,
    required this.createdAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      email: json['email'],
      name: json['name'],
      phone: json['phone'],
      location: json['location'],
      preferences: List<String>.from(json['preferences'] ?? []),
      wishlist: List<String>.from(json['wishlist'] ?? []),
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'phone': phone,
      'location': location,
      'preferences': preferences,
      'wishlist': wishlist,
      'created_at': createdAt.toIso8601String(),
    };
  }
}
