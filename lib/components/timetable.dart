import 'package:flutter/material.dart';
import 'package:tusur_employee/entity/lesson.dart';

class Timetable extends StatelessWidget {
  Timetable({@required this.lessons});

  final List<Lesson> lessons;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32), topRight: Radius.circular(32)),
      ),
      child: Column(
        children: [
          for (Lesson lesson in lessons) _LessonWidget(lesson: lesson),
        ],
      ),
    );
  }
}

class _LessonWidget extends StatelessWidget {
  String getNameFromType(LessonType type) {
    switch (type) {
      case LessonType.PRACTICE:
        return "Практика";
      case LessonType.LABORATORY:
        return "Лабораторная\nработа";
      case LessonType.LECTURE:
        return "Лекция";
      case LessonType.INDEPENDENT_WORK:
        return "Самостоятельная работа";
      case LessonType.COURSEWORK:
        return "Курсовая работа";
      case LessonType.COURSE_PROJECT:
        return "Курсовое проектирование";
      case LessonType.EXAM:
        return "Экзамен";
      case LessonType.WORK_PRACTICE:
        return "Учебн./Произв. практика";
      case LessonType.OFFSET:
        return "Зачет";
      case LessonType.RATE_OFFSET:
        return "Зачет с оценкой";
    }
    return null;
  }

  Color getColorFromType(LessonType type) {
    switch (type) {
      case LessonType.PRACTICE:
        return Color(0xFFBAFFF3);
      case LessonType.LABORATORY:
        return Color(0xFFC2B3FE);
      case LessonType.LECTURE:
        return Color(0xFFBAFFC5);
      case LessonType.INDEPENDENT_WORK:
        // TODO: Handle this case.
        break;
      case LessonType.COURSEWORK:
        // TODO: Handle this case.
        break;
      case LessonType.COURSE_PROJECT:
        // TODO: Handle this case.
        break;
      case LessonType.EXAM:
        // TODO: Handle this case.
        break;
      case LessonType.WORK_PRACTICE:
        // TODO: Handle this case.
        break;
      case LessonType.OFFSET:
        // TODO: Handle this case.
        break;
      case LessonType.RATE_OFFSET:
        // TODO: Handle this case.
        break;
    }
    return Color(0xFFFF0000);
  }

  final Lesson lesson;

  const _LessonWidget({Key key, this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Text(
                  "${lesson.startHour}:${lesson.startMinute}-${lesson.finishHour}:${lesson.finishMinute}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none)),
              Container(
                color: getColorFromType(lesson.type),
                child: Text(
                  getNameFromType(lesson.type),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Text(lesson.name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none)),
              Text(
                lesson.group,
                style: TextStyle(
                    color: Color(0xFF00C2FF),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none),
              ),
              Text(
                lesson.place,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
