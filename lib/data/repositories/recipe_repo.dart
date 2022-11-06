import 'dart:convert';

class RecipeRepo {
  final String name;
  final String images;
  final String totalTime;
  final double rating;
  final String id;
  RecipeRepo({
    required this.name,
    required this.images,
    required this.totalTime,
    required this.rating,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'images': images,
      'totalTime': totalTime,
      'rating': rating,
      'id': id,
    };
  }

  factory RecipeRepo.fromJson(dynamic json) {
    return RecipeRepo(
      name: json['name'] ?? '',
      images: json['images'][0]['hostedLargeUrl'] as String,
      totalTime: json['totalTime'] ?? '',
      rating: json['rating']?.toDouble() ?? 0.0,
      id: json['id'] ?? '',
    );
  }
  static List<RecipeRepo> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return RecipeRepo.fromJson(data);
    }).toList();
  }
}
