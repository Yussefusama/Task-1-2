import 'package:flutter/material.dart';

class LoginChoices extends StatelessWidget {
  const LoginChoices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
         child: Padding(
        padding: const EdgeInsets.all(10.0),
          child: Column(
    children: [
    Text ('Sign in to Your Account',
        style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 20

    )
    )
    ]
    ))));
  }
}

