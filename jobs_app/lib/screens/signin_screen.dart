import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: Column(
              children: [
                // greetings
                Text(
                  'Hello Again!',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome back\nyou've been missed",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),

                SizedBox(
                  height: 50,
                ),

                // textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: 'Enter username',
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Password',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                // recovery password
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text('Recovery password'),
                    )
                  ],
                ),

                SizedBox(
                  height: 25,
                ),

                // sign in button
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 248, 101, 90),
                      borderRadius: BorderRadius.circular(12)),
                  alignment: Alignment.center,
                  child: Text(
                    'Sign in',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                // or continue with
                Text('Or continue with'),

                SizedBox(
                  height: 20,
                ),

                // auth icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 70,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      child: Transform.scale(
                        scale: 0.5,
                        child: Image.asset(
                          'assets/logo/google.png',
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      child: Transform.scale(
                        scale: 0.8,
                        child: Image.asset(
                          'assets/logo/apple.png',
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      child: Transform.scale(
                          scale: 0.7,
                          child: Image.asset('assets/logo/facebook.png')),
                    ),
                  ],
                ),

                SizedBox(
                  height: 30,
                ),

                // register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member? '),
                    Text(
                      'Register now',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
