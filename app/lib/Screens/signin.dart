// ignore_for_file: prefer_const_constructors

import 'package:app/util/adaptivefont.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class LoginWidgit extends StatefulWidget {
  const LoginWidgit({Key? key}) : super(key: key);

  @override
  State<LoginWidgit> createState() => _LoginWidgitState();
}

class _LoginWidgitState extends State<LoginWidgit> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Color(0xfffafafa),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Image(
                  image: AssetImage('assets/images/logo.jpg'),
                  width: AdaptiveTextSize().getadaptiveTextSize(context, 250),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    width: AdaptiveTextSize().getadaptiveTextSize(context, 450),
                    height: 50,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: emailController,
                        cursorColor: Colors.white,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 0, color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 0, color: Colors.white),
                          ),
                          labelText: 'Email / Username',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: 50,
                    width: AdaptiveTextSize().getadaptiveTextSize(context, 450),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: passwordController,
                        cursorColor: Colors.white,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 0, color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 0, color: Colors.white),
                          ),
                          labelText: 'Password',
                        ),
                        obscureText: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: AdaptiveTextSize().getadaptiveTextSize(context, 450),
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                        enableFeedback: true,
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.amber),
                      ),
                      onPressed: signIn,
                      child: Text(
                        'Signin',
                        style: TextStyle(fontSize: 20, color: Colors.black87),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: AdaptiveTextSize().getadaptiveTextSize(context, 180),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
  }
}
