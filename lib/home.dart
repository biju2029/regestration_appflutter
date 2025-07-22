import 'package:flutter/material.dart';
import 'package:regestration_appflutter/login.dart';
import 'package:regestration_appflutter/signup.dart';

// ignore: camel_case_types
class Welcome extends StatelessWidget {
  @override
  build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Center(
            child: Text(
              "Welcome",
              style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Image(
              image: NetworkImage(
                "https://t4.ftcdn.net/jpg/02/89/84/03/360_F_289840394_1zOMSmpJEuZFtuaA6fBtE2YnkbyiXxeO.jpg",
              ),
            ),
          ),
          SizedBox(height: 150),

          SizedBox(
            height: 40,
            width: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 222, 226, 230),
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Loginpage()),
                );
              },
              child: Text("login"),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 40,
            width: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 3, 82, 160),
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
              child: Text("Sign up"),
            ),
          ),
        ],
      ),
    );
  }
}
