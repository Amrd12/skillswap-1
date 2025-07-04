import '../../domain/entity/home_page_data.dart';

class HomePageModel extends HomePageData {


  const HomePageModel({
    required super.swaps,
    required super.notifications,
    required super.imageUrl,
    required super.imageId,
    required  super.name,
  });

  factory HomePageModel.fromJson(Map<String, dynamic> json) {
    return HomePageModel(
      imageUrl: json['imageUrl'] as String,
      swaps: json['swaps'] as int,
      notifications: List<String>.from(json['notifications'] as List),
      imageId: json['image_id'] as String,
      name: json['name'] as String,
    );
  }
  Map<String, dynamic> toJson() =>{
    'imageUrl': imageUrl,
    'swaps': swaps,
    'notifications': notifications,
    'image_id': imageId,
    'name': name,
  };
}