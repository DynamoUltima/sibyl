// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bank_app/components/shapes/parallelogram_clipper.dart';
import 'package:bank_app/components/shapes/parallelogram_container.dart';
import 'package:bank_app/components/shapes/rhombus_container.dart';
import 'package:bank_app/home/views/home.dart';
import 'package:bank_app/profile/profile.dart';
import 'package:bank_app/transactions/transactions.dart';
import 'package:flutter/material.dart';

import '../../components/rhombus_clipper.dart';
import '../../components/shapes/parallelogram_image.dart';
import '../../components/trapezium_button.dart';
import '../../components/trapezoid_button_right.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String state = 'HOME';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      // backgroundColor: Colors.blue[900],
      body: Container(
        height: height,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: height * 0.1,
              color: Colors.blue[900],
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ParallelogramImage(),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good Morning',
                              style: TextStyle(
                                  color: Colors.white,
                                  // fontSize: 18,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              'Mr John Jimoh',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Bank',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Parallelogram(),
                    ],
                  )
                ],
              ),
            ),
            state == 'HOME'
                ? Expanded(child: Home())
                : Expanded(child: Transactions())
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: Stack(
          children: [
            Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  setState(() {
                    state = 'TRANSACT';
                  });
                },
                child: Container(
                  width: width,
                  height: height * 0.1,
                  // alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.comment),
                          Text('Transactions'),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.25,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              child: TrapezoidButton(
                width: width * 0.5,
                height: height * 0.1,
                color: Colors.blue.shade900,
                text: 'Home',
                onPressed: () {
                  setState(() {
                    state = 'HOME';
                  });
                  // Add your button's onPressed logic here
                  print('Button pressed');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
