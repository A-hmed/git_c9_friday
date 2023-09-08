import 'package:flutter/material.dart';
import 'package:friday_flutter_basics_c9/ui/screens/home/home.dart';
import 'package:friday_flutter_basics_c9/ui/screens/login/login.dart';

class Register extends StatelessWidget {
  static String routeName  = "Register";
   Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushReplacementNamed(context, Home.routeName);
          }, child: Text("Create account")),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Go back to login"))
        ],
      ),
    );
  }
}
