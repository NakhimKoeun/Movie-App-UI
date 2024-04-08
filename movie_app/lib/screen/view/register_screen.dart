import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/component/TextStyle.dart';
import 'package:movie_app/component/form_reusable.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // ignore: prefer_const_constructors
              child: Padding(
                padding: const EdgeInsets.only(top: 100, left: 10),
                child: Text(
                  "Welcom to Registerscreen",
                  style: SupportWidget.FormStyle(),
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            formreusable(
              labelText: 'Enter FullName',
              hintText: 'FullName',
            ),
            formreusable(
              labelText: 'Enter Email',
              hintText: 'Email',
            ),
            formreusable(
              labelText: 'Enter Password',
              hintText: 'Password',
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Register",
                        style: SupportWidget.StyleFont(),
                      )),
                )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("OR"),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        "Back to Login",
                        style: SupportWidget.StyleFont(),
                      )),
                )),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
