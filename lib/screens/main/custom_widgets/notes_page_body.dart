import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotesPageBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NotesPageBodyState();
}

class _NotesPageBodyState extends State<NotesPageBody> {
  final names = [
    "Иван Иваныч",
    "Иван Степаныч",
    "Иван Фомич",
    "Иван Кузьмич",
  ];
  final dates = [
    DateTime(2021, 03, 15),
    DateTime(2021, 03, 16),
    DateTime(2021, 03, 17),
    DateTime(2021, 03, 18),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 7, vertical: 9),
          color: Color(0xFF617EE8),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return _Note(
                name: names[index],
                date: dates[index],
              );
            },
            itemCount: names.length,
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                height: 9,
              );
            },
          ),
        ),
      );
  }
}

class _Note extends StatelessWidget {
  final String name;
  final DateTime date;

  const _Note({Key key, this.name, this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      confirmDismiss: (direction) async {
        return direction == DismissDirection.endToStart;
      },
      background: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              height: 46,
              width: 46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: Colors.red,
              ),
              child: Icon(Icons.delete, color: Colors.white)),
          Container(
            width: 18,
          )
        ],
      ),
      key: Key(name),
      child: Container(
        padding: EdgeInsets.only(left: 11, top: 11, bottom: 13),
        //margin: EdgeInsets.symmetric(horizontal: 7,vertical: 9),
        decoration: BoxDecoration(
            color: Color(0xFFE9E9E9), borderRadius: BorderRadius.circular(11)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: 'Roboto',
              ),
            ),
            Container(height: 16),
            Text(
                date.month < 10
                    ? "0" + date.month.toString() + "." + date.day.toString()
                    : date.month.toString() + "." + date.day.toString(),
                style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto')),
          ],
        ),
      ),
    );
  }
}
