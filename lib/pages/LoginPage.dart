import 'package:flutter/material.dart';
import 'package:timetable/custom/button.dart';
import 'package:timetable/custom/textfield.dart';
import 'package:timetable/utils/logo.dart';
import 'package:timetable/utils/styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.COLOR2,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Logo(
              appname: false,
            ),
            CustomTextField(
              labelText: "Enter Email",
              hintText: "E-mail",
              initialValue: '',
              onChanged: () {},
              onSaved: () {},
              validator: () {},
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              labelText: "Enter Password",
              hintText: "Password",
              initialValue: '',
              onChanged: () {},
              onSaved: () {},
              validator: () {},
            ),
            SizedBox(
              height: 10,
            ),
            CustomButton(text: "Login", onPressed: () {}),
            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password ?",
                style: TextStyle(fontSize: 16, color: Styles.COLOR4),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Don't have an account?"),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Styles.COLOR4),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
