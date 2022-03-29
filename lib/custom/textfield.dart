import 'package:flutter/material.dart';
import 'package:timetable/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final double hintTextSize;
  final String initialValue;
  final double width;
  final TextInputType textInputType;
  final Function onSaved;
  final Function onChanged;
  final Function validator;
  final IconData icon;
  final bool isPrefixIcon;
  final double preIconSize;
  final double padding;
  final bool size;
  final bool onRegPage;

  CustomTextField(
      {required this.labelText,
      required this.hintText,
      this.preIconSize = 30,
      this.hintTextSize = 20,
      required this.initialValue,
      this.width = 680,
      required this.onSaved,
      required this.onChanged,
      required this.validator,
      this.textInputType = TextInputType.text,
      this.icon = Icons.location_on,
      this.isPrefixIcon = false,
      this.padding = 20,
      this.size = false,
      this.onRegPage = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Container(
        width: width,
        decoration: (onRegPage == true)
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Styles.COLOR3,
                border: Border.all(width: 2, color: Styles.COLOR4),
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Colors.white,
                boxShadow: [
                    BoxShadow(
                      color: Styles.COLOR3,
                      blurRadius: 1,
                      // offset: Offset(2, 10)
                    )
                  ]),
        child: Padding(
          padding:
              (isPrefixIcon) ? EdgeInsets.all(0) : EdgeInsets.only(left: 16),
          child: TextFormField(
              onSaved: onSaved(),
              onChanged: onChanged(),
              keyboardType: textInputType,
              initialValue: initialValue,
              style: TextStyle(fontSize: 30),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                //labelText: labelText,
                prefixIcon: isPrefixIcon
                    ? Icon(
                        icon,
                        color: Styles.COLOR4,
                        size: preIconSize,
                      )
                    : null,
                hintStyle: TextStyle(
                    fontSize: hintTextSize,
                    fontFamily: 'Montserrat',
                    color: Colors.black.withOpacity(0.5),
                    fontWeight: FontWeight.w300),
              )),
        ),
      ),
    );
  }
}
