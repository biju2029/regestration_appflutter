import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 153, 130, 39),
      appBar: AppBar(foregroundColor: Color.fromARGB(255, 118, 103, 48)),
    );
  }
}
