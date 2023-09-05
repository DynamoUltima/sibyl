// ignore_for_file: prefer_const_constructors

import 'package:bank_app/transactions/all.dart';
import 'package:bank_app/transactions/credit.dart';
import 'package:bank_app/transactions/debit.dart';
import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'Transactions',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey[900]),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TabBar(tabs: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'All',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .apply(color: Colors.blueGrey[900]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Debit',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .apply(color: Colors.blueGrey[900]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Credit',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .apply(color: Colors.blueGrey[900]),
                        ),
                      )
                    ]),
                  ),
                  Expanded(
                    child: Container(
                      child: TabBarView(children: [
                        All(),
                        Debit(),
                        Credit()
                      ]),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
