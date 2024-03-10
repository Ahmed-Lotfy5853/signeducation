class LessonModel {
  String name;
  String description;
  String cover;

  LessonModel({
    required this.name,
    this.description = '',
    required this.cover,
  });
}
