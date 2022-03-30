import 'package:flutter/material.dart';
import 'package:timetable/custom/button.dart';
import 'package:timetable/custom/textfield.dart';
import 'package:timetable/pages/LoginPage.dart';
import 'package:timetable/utils/logo.dart';
import 'package:timetable/utils/styles.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
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
                textInputType: TextInputType.name,
                labelText: "Enter Name",
                hintText: "Name",
                initialValue: '',
                onChanged: () {},
                onSaved: () {},
                validator: () {},
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                textInputType: TextInputType.emailAddress,
                labelText: "Enter Rollnumber",
                hintText: "Rollnumber",
                initialValue: '',
                onChanged: () {},
                onSaved: () {},
                validator: () {},
              ),
              SizedBox(
                height: 20,
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
                height: 20,
              ),
              CustomButton(text: "Send OTP", onPressed: () {}),
              SizedBox(
                height: 20,
              ),
              // TextButton(
              //     onPressed: () {},
              //     child: Text(
              //       "Send OTP",
              //       style: TextStyle(fontSize: 16, color: Styles.COLOR4),
              //     )),
              CustomTextField(
                labelText: "Enter OTP",
                hintText: "OTP",
                initialValue: '',
                onChanged: () {},
                onSaved: () {},
                validator: () {},
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                  text: "Register",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Didn't get the OTP?"),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Resend OTP",
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
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
