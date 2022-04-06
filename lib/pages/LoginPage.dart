import 'package:flutter/material.dart';
import 'package:timetable/custom/button.dart';
import 'package:timetable/custom/textfield.dart';
import 'package:timetable/pages/HomePage.dart';
import 'package:timetable/pages/RegisterPage.dart';
import 'package:timetable/utils/logo.dart';
import 'package:timetable/utils/styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.COLOR1,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Logo(
                appname: false,
              ),
              CustomTextField(
                textInputType: TextInputType.emailAddress,
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
                obscureText: true,
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
              CustomButton(
                  text: "Login",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }),
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                      //decoration: TextDecoration.underline
                    ),
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
