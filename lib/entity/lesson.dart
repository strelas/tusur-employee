class Lesson {
  Lesson(this.name, this.group, this.type, this.startHour, this.startMinute, this.finishHour, this.finishMinute, this.place);
  final String name;
  final String group;
  final LessonType type;
  final int startHour;
  final int startMinute;
  final int finishHour;
  final int finishMinute;
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