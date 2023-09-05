// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.amber,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Account',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'GHC 10 0000.00',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Checking Accounts ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    '873378749279247974',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal),
                  ),
                ],
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
              Text('Recent Transactions'),
              Text(
                'See all',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.blue[900],
                    child: Text(
                      'C',
                      style: TextStyle(color: Colors.white),
                    )),
                title: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('GHC 50 000'),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        // color: Colors.blue[50],
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Colors.blue[50],
                            // shape: BoxShape.circle,
                            //border: Border.all(),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          'Debit',
                          style:
                              TextStyle(color: Colors.blue[300], fontSize: 10),
                        )),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Text(
                      '#',
                      style: TextStyle(fontSize: 10, color: Colors.blue),
                    ),
                    Text(
                      'Gift',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                trailing: Text(
                  '01-02-2021',
                  style: TextStyle(color: Colors.grey[400]),
                ),
                isThreeLine: true,
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.blue[900],
                    child: Text(
                      'C',
                      style: TextStyle(color: Colors.white),
                    )),
                title: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('GHC 50 000'),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      // color: Colors.blue[50],
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Colors.blue[50],
                          // shape: BoxShape.circle,
                          //border: Border.all(),
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'Debit',
                        style: TextStyle(color: Colors.blue[300], fontSize: 10),
                      ),
                    ),
                  ],
                ),
                subtitle: Row(
                  children: [
                    Text(
                      '#',
                      style: TextStyle(fontSize: 10, color: Colors.blue),
                    ),
                    Text(
                      'Gift',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                trailing: Text(
                  '01-02-2021',
                  style: TextStyle(color: Colors.grey[400]),
                ),
                isThreeLine: true,
              ),
              Divider(
                height: 1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
