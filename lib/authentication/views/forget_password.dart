// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  FocusNode nodeOne = FocusNode();
  FocusNode nodeTwo = FocusNode();
  FocusNode nodeThree = FocusNode();
  

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue[900] ,
      //  // automaticallyImplyLeading: true,
      //  leading: Row(
      //    children: [
      //     IconButton(onPressed: (){}, icon:Icon(Icons.chevron_left)),
      //      Text('Back',style: TextStyle(fontSize: 10),),
      //    ],
      //  ),
      //  title:  Text('Back') ,
      // ),
      backgroundColor: Colors.blue[900],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.chevron_left,
                              color: Colors.white,
                            )),
                        Text(
                          'Back',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Bank',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
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
                  hintText: ' Old Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              
              TextField(
                focusNode: nodeTwo,
                onChanged: (val) {},
                decoration: InputDecoration(
                  isDense: true,
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                focusNode: nodeThree,
                obscureText: true,
                onChanged: (val) {},
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  isDense: true,
                  filled: true,
                  hintText: 'Confirm New Password',
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
                  onPressed: () {},
                  child: Text('Change Password'),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
