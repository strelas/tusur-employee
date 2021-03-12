import 'package:flutter/material.dart';

class NotesPageBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NotesPageBodyState();
}

class _NotesPageBodyState extends State<NotesPageBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Заметки"),
    );
  }
}