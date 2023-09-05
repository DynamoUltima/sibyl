

import 'package:flutter/material.dart';

import '../components/bottomSheet/show_transactions.dart';
import '../model/customer_transaction_data.dart';
import '../service/services.dart';
import 'all.dart';

class Credit extends StatefulWidget {
  const Credit({super.key});

  @override
  State<Credit> createState() => _CreditState();
}

class _CreditState extends State<Credit> {
  //List<CustomerTransaction> data = customerData().where((element) => element.transactionDirection =="C").toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: customerCreditData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    showTransaction(context, snapshot.data![index]);
                  },
                  leading: CircleAvatar(
                      backgroundColor:
                          snapshot.data![index].transactionDirection == "C"
                              ? Colors.blue[900]
                              : Colors.yellow[800],
                      child: Text(
                        snapshot.data![index].transactionDirection,
                        style: TextStyle(color: Colors.white),
                      )),
                  title: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('GHC  ${snapshot.data![index].transactionAmount}'),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          // color: Colors.blue[50],
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color:
                                  snapshot.data![index].transactionDirection ==
                                          "C"
                                      ? Colors.blue[50]
                                      : Colors.yellow[50],
                              // shape: BoxShape.circle,
                              //border: Border.all(),
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            snapshot.data![index].transactionDirection == "C"
                                ? 'Credit'
                                : 'Debit',
                            style: TextStyle(
                                color: snapshot.data![index]
                                            .transactionDirection ==
                                        "C"
                                    ? Colors.blue[300]
                                    : Colors.yellow[800],
                                fontSize: 10),
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
                        snapshot.data![index].transactionNarration,
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  trailing: Text(
                    snapshot.data![index].transactionDate.toString(),
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                  isThreeLine: true,
                );
              },
            );
          }

          return Container(
            child: Center(
              child: Text('Empty'),
            ),
          );
        },
      ),
    );
  }
}