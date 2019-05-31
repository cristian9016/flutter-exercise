import 'package:flutter/material.dart';

class FloatingActionButtonProfile extends StatefulWidget {
  Icon icon;
  bool mini;

  FloatingActionButtonProfile(this.icon, this.mini);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonProfile(icon, mini);
  }
}

class _FloatingActionButtonProfile extends State<FloatingActionButtonProfile> {
  Icon icon;
  bool mini;

  _FloatingActionButtonProfile(this.icon, this.mini);

  bool checked = false;

  void onPressed() {
    setState(() {
      this.checked = !this.checked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: checked ? Colors.white : Color(0x99ffffff),
      foregroundColor: Color(0xff4268d3),
      mini: mini,
      onPressed: onPressed,
      child: icon,
    );
  }
}
