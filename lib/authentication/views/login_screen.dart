import 'package:bank_app/authentication/views/forget_password.dart';
import 'package:bank_app/home/views/dashboard.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode nodeOne = FocusNode();
  FocusNode nodeTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[900],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Text(
                  'Bank',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                TextField(
                  focusNode: nodeOne,
                  onChanged: (val) {},
                  decoration: InputDecoration(
                    isDense: true,
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  focusNode: nodeTwo,
                  obscureText: true,
                  onChanged: (val) {},
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    isDense: true,
                    filled: true,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(16)),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.yellow.shade800),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Dashboard()));
                    },
                    child: Text('Login'),
                  ),
                ),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ForgetPassword()));
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
