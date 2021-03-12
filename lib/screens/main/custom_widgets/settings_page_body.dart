import 'package:flutter/cupertino.dart';

class SettingsPageBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SettingsPageBodyState();
}

class _SettingsPageBodyState extends State<SettingsPageBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Настройки"),
    );
  }
}