import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text("Forgot Password?", style: TextStyle(fontSize: 40)),
          ),
          SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: Text("Email", style: TextStyle(fontSize: 25)),
          ),
          TextField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          SizedBox(height: 25),
          SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(221, 253, 245, 245),
                foregroundColor: const Color.fromARGB(255, 57, 96, 159),
                side: BorderSide(color: const Color.fromARGB(255, 29, 26, 26)),
              ),
              onPressed: () {},
              child: Text("Send Link"),
            ),
          ),
        ],
      ),
    );
  }
}
