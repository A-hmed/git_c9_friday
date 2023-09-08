import 'package:flutter/material.dart';
import 'package:friday_flutter_basics_c9/ui/screens/home/home.dart';
import 'package:friday_flutter_basics_c9/ui/screens/register/register.dart';

class Login extends StatelessWidget {
  static String routeName = "Login";
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushReplacementNamed(context, Home.routeName);
            }, child: Text("Sign in")),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, Register.routeName);
            }, child: Text("Sign up"))
          ],
        ),
      ),
    );
  }
}
