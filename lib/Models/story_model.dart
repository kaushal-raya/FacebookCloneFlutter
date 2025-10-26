import 'package:facebook_clone/Models/user_model.dart';

class Story {
  final User user;
  final String imageUrl;
  final bool isViewed;

   Story({
    required this.user,
    required this.imageUrl,
    this.isViewed = false,
  });
}