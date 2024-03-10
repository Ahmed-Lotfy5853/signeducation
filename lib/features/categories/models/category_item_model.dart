import 'package:flutter/material.dart';

import '../../../core/resources/enums.dart';
import '../../lesson/models/lesson_model.dart';

class CategoryItemModel {
  String title;
  String cover;
  Color backgroundColor;
  Categories category;
  List<LessonModel> lessons;
  CategoryItemModel({
    required this.title,
    required this.cover,
    required this.backgroundColor,
    required this.category,
    required this.lessons,
  });
}
