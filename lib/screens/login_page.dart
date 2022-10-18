import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shoppingcartui/widgets/build_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                "Log in",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: BuildTextField(
                  hintText: 'Email',
                )),
            Padding(
                padding: const EdgeInsets.all(20),
                child: BuildTextField(
                  hintText: 'Password',
                  isPassword: true,
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Lon in")),
            SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Create new account"),
                TextButton(onPressed: () {}, child: Text("Signup"))
              ],
            )
          ],
        ),
      )),
    );
  }
}
