class Lesson {
  Lesson(this.name, this.group, this.type, this.start, this.finish, this.place);
  final String name;
  final String group;
  final LessonType type;
  final DateTime start;
  final DateTime finish;
  final String place;
}
enum LessonType{
  PRACTICE,
  LABORATORY,
  LECTURE,
  INDEPENDENT_WORK,
  COURSEWORK,
  COURSE_PROJECT,
  EXAM,
  WORK_PRACTICE,
  OFFSET,
  RATE_OFFSET,
}