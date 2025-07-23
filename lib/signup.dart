import 'package:flutter/material.dart';
import 'package:regestration_appflutter/login.dart';
import 'package:regestration_appflutter/services.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController namecont = TextEditingController();
  TextEditingController emailcont = TextEditingController();
  TextEditingController passwordcont = TextEditingController();
  TextEditingController confirmpasswordcont = TextEditingController();
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
          TextField(
            controller: namecont,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          Align(alignment: Alignment.topLeft, child: Text("Email")),
          TextField(
            controller: emailcont,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          Align(alignment: Alignment.topLeft, child: Text("Password")),
          TextField(
            controller: passwordcont,

            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          Align(alignment: Alignment.topLeft, child: Text("Confirm password")),
          TextField(
            controller: confirmpasswordcont,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          SizedBox(height: 40),
          SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                side: BorderSide(color: Colors.black),
              ),
              onPressed: () {
                signup(
                  Username: namecont.text,
                  Email: emailcont.text,
                  Password: passwordcont.text,
                  Confirmpassword: confirmpasswordcont.text,
                  context: context,
                );
              },
              child: Text("sign up"),
            ),
          ),

          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(color: Colors.black),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Loginpage()),
                  );
                },
                child: Text(
                  "login",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 15, 13, 13),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
