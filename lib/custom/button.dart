import 'package:flutter/material.dart';
import 'package:timetable/utils/styles.dart';
import 'package:flutter/foundation.dart';

class CustomButton extends StatelessWidget {
  final bool onRegPage;
  final GestureTapCallback onPressed;
  final String text;
  final double height;
  final double width;

  CustomButton({
    this.onRegPage = false,
    required this.onPressed,
    this.text = "Submit",
    this.height = 50,
    this.width = 135,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints(minHeight: height, minWidth: width),
      fillColor: Styles.COLOR3,
      splashColor: Styles.COLOR4,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              text,
              maxLines: 1,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}
