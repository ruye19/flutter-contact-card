// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Added 'const' here
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Added 'const' here

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/1.jpg'), // No 'const' here because AssetImage isn't constant
              ),
              const Text(
                'Ruth Yeshitila',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'sigmar',
                  letterSpacing: 3,
                ),
              ),
              const Text(
                'Software Developer',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: 'quicksand',
                  letterSpacing: 3,
                ),
              ),
             
              const SizedBox(
                height: 20.0,
                width: 130.0,
              ),
              const Divider(
                color: Colors.white,
                height: 20.0,
                thickness: 0.5,
                indent: 50.0,
                endIndent: 50.0,
              ),
             
              Card(
                color: const Color.fromARGB(255, 255, 255, 255),
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 55.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Colors.lightGreen,
                  ),
                  title: const Text(
                    '+251-901-851-873',
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
             
              Card(
                color: const Color.fromARGB(255, 255, 255, 255),
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 55.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.mail,
                    color: Colors.lightGreen,
                  ),
                  title: const Text(
                    'Ruthye64@gmail.com',
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}