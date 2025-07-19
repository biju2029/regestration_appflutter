import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Sign up",
            style: TextStyle(
              color: const Color.fromARGB(255, 17, 0, 0),
              fontSize: 40,
              height: 4,
            ),
          ),
          SizedBox(height: 10),
          Text(" Create an account, it's free"),
          SizedBox(height: 8),
          Align(alignment: Alignment.topLeft, child: Text("Username")),
          TextField(),
        ],
      ),
    );
  }
}
