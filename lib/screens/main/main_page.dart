import 'package:flutter/material.dart';
import 'package:tusur_employee/screens/main/custom_widgets/settings_page_body.dart';
import 'package:tusur_employee/screens/main/custom_widgets/timetable_page_body.dart';
import 'custom_widgets/notes_page_body.dart';
import 'custom_widgets/notifications_page_body.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPageState();
}

enum _PageType {
  NOTES,
  NOTIFICATIONS,
  SETTINGS,
  TIMETABLE,
}

class _MainPageState extends State<StatefulWidget> {
  _PageType _type = _PageType.TIMETABLE;

  Widget get _body {
    switch (_type) {
      case _PageType.NOTES:
        return NotesPageBody();
      case _PageType.NOTIFICATIONS:
        return NotificationsPageBody();
      case _PageType.SETTINGS:
        return SettingsPageBody();
      case _PageType.TIMETABLE:
        return TimetablePageBody();
    }
    return TimetablePageBody();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Expanded(
          child: _body,
        ),
        Container(
          height: 79,
          color: Color(0xFFF5F5F5),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  child: Container(
                      color: Color(0xFFF5F5F5),
                      child:
                          Center(child: Icon(Icons.calendar_today_outlined))),
                  onTap: () {
                    setState(() {
                      _type = _PageType.TIMETABLE;
                    });
                  },
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Container(
                      color: Color(0xFFF5F5F5),
                      child: Center(child: Icon(Icons.assignment_outlined))),
                  onTap: () {
                    setState(() {
                      _type = _PageType.NOTES;
                    });
                  },
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Container(
                      color: Color(0xFFF5F5F5),
                      child: Center(child: Icon(Icons.add_alert))),
                  onTap: () {
                    setState(() {
                      _type = _PageType.NOTIFICATIONS;
                    });
                  },
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Container(
                      color: Color(0xFFF5F5F5),
                      child: Center(child: Icon(Icons.settings))),
                  onTap: () {
                    setState(() {
                      _type = _PageType.SETTINGS;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );

  }
}
