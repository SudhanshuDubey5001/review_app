import 'package:review_app/utils/DummyData.dart';

import 'models/Review.dart';

class Controller {
  static Controller? _instance;

  Controller._();

  factory Controller() => _instance ??= Controller._();

  List<Review> reviewList = DummyData().reviews;
}
