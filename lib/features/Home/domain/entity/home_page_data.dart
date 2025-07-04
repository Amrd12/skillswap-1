import 'package:equatable/equatable.dart';

class HomePageData extends Equatable {
  final String name;
  final String imageUrl;
  final String imageId;
  final int swaps;
  final List<String> notifications;

  const HomePageData({
    required this.name,
    required this.swaps,
    required this.imageId,
    required this.notifications,
    required this.imageUrl,
  });
  
  @override
  // TODO: implement props
  List<Object?> get props => [
    name,
    imageUrl,
    swaps,
    notifications,
  ];
}