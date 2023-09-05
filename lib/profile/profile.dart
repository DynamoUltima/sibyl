// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bank_app/components/shapes/profle_image_container.dart';
import 'package:flutter/material.dart';

import '../components/shapes/parallelogram_container.dart';
import '../components/trapezium_button.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.1,
            color: Colors.blue[900],
            padding: EdgeInsets.all(10),
            child: Row(
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
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Bank',
                      style: TextStyle(color: Colors.white),
                    ),
                    Parallelogram(),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Stack(
              children: [
                Material(
                  color: Colors.yellow[50],
                  child: InkWell(
                    onTap: () {
                      // setState(() {
                      //   state = 'TRANSACT';
                      // });
                    },
                    child: Container(
                      padding: EdgeInsets.all(6),
                      width: width,
                      height: height * 0.2,
                      // color: Colors.green,
                      // alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Spacer(),
                          SizedBox(
                            width: width * 0.4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // Icon(Icons.comment),
                              // Text('Transactions'),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Spacer(),
                                  //  SizedBox( width: width*0.4,),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'FIRST NAME',
                                        style: TextStyle(
                                            color: Colors.blue[800],
                                            fontSize: 10),
                                      ),
                                      Text(
                                        'JOHN',
                                        style: TextStyle(
                                          color: Colors.blue[800],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'OTHER NAMES',
                                        style: TextStyle(
                                            color: Colors.blue[800],
                                            fontSize: 10),
                                      ),
                                      Text(
                                        'JIMOH',
                                        style:
                                            TextStyle(color: Colors.blue[800]),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Spacer(),
                                  //  SizedBox( width: width*0.4,),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'GENDER',
                                        style: TextStyle(
                                            color: Colors.blue[800],
                                            fontSize: 10),
                                      ),
                                      Text(
                                        'MALE',
                                        style: TextStyle(
                                          color: Colors.blue[800],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'TITLE',
                                        style: TextStyle(
                                            color: Colors.blue[800],
                                            fontSize: 10),
                                      ),
                                      Text(
                                        'MR',
                                        style:
                                            TextStyle(color: Colors.blue[800]),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // Spacer(),
                                  //  SizedBox( width: width*0.4,),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'ID',
                                        style: TextStyle(
                                            color: Colors.blue[800],
                                            fontSize: 10),
                                      ),
                                      Text(
                                        '233333',
                                        style: TextStyle(
                                          color: Colors.blue[800],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   width: width * 0.25,
                          // )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  child: ProfileImageContainer(
                    width: width * 0.4,
                    height: height * 0.2,
                    color: Colors.blue.shade900,
                    text: 'Home',
                    onPressed: () {
                      // setState(() {
                      //   state = 'HOME';
                      // });
                      // Add your button's onPressed logic here
                      print('Button pressed');
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey[100],
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Accounts settings'),
                // Text(
                //   'See all',
                //   style: TextStyle(color: Colors.blue),
                // ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.lock_clock_outlined,
              color: Colors.blue[800],
            ),
            title: Text(
              'Change Accounts Password',
              style: TextStyle(color: Colors.blue[800]),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.logout_outlined,
              color: Colors.blue[800],
            ),
            title: Text(
              'Logout',
              style: TextStyle(color: Colors.blue[800]),
            ),
            onTap: () {},
          ),
          Container(
            color: Colors.grey[100],
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('About'),
                // Text(
                //   'See all',
                //   style: TextStyle(color: Colors.blue),
                // ),
              ],
            ),
          ),
          ListTile(
            // leading: Icon(
            //   Icons.lock_clock_outlined,
            //   color: Colors.blue[800],
            // ),
            title: Text(
              'Terms and Conditions',
              style: TextStyle(color: Colors.blue[800]),
            ),
            onTap: () {},
          ),
          ListTile(
            // leading: Icon(
            //   Icons.logout_outlined,
            //   color: Colors.blue[800],
            // ),
            title: Text(
              'Privacy Policy',
              style: TextStyle(color: Colors.blue[800]),
            ),
            onTap: () {},
          ),
        ],
      ),
      bottomNavigationBar: Container(
          height: height * 0.06,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey.shade300, // Choose your border color
                width: 1.0, // Choose your border width
              ),
            ),
          ),
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child:
                Text('App Version', style: TextStyle(color: Colors.blue[800])),
          )),
    );
  }
}
