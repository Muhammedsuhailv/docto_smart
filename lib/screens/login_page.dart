import 'package:flutter/material.dart';
import 'package:machinetest/screens/home_page.dart';
import 'package:machinetest/widgets/custom_button.dart';
import 'package:machinetest/widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(width: double.infinity,child: Image(image: AssetImage("assets/frame.png"),fit: BoxFit.fitWidth,)),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Image(image: AssetImage("assets/asset.png")),
                )),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 110.0),
                    child: Text(
                      "Login Or Register To Book\nYour Appointments",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 340.0),
                    child: Text("Email"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                 CustomTextfield(hintText: 'Enter Your Email'),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 315.0),
                    child: Text("Password"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextfield(hintText: 'Enter Your Password'),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    child: CustomButton(data: 'Login',height: 50,width: 400,)

                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Center(
                      child: Text(
                    "By creating or logging into an account you are agreeing with our",
                    style: TextStyle(fontSize: 10),
                  )),
                  Center(
                      child: Text(
                    "Terms and Conditions and Privacy Policy.",
                    style: TextStyle(fontSize: 10, color: Colors.blue),
                  )),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
