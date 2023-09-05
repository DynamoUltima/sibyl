



import 'package:flutter/material.dart';

import '../../model/customer_transaction_data.dart';

void showTransaction(BuildContext context ,CustomerTransaction data ) {

   showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(25)),
                    ),
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Transaction Details',
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Balance before Transaction',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w600)),
                                      Text('GHC 10,0000.00',
                                          style: TextStyle(
                                              color: Colors.grey[850],
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Balance after Transaction',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w600)),
                                      Text('GHC 10,0000.00',
                                          style: TextStyle(
                                              color: Colors.grey[850],
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Transaction Date',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w600)),
                                      Text(data.transactionDate.toString(),
                                          style: TextStyle(
                                              color: Colors.grey[850],
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Transaction Direction',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w600)),
                                      Text(data.transactionDirection =='C' ? 'Credit':'Deposit',
                                          style: TextStyle(
                                              color: Colors.grey[850],
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Transaction Narration',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w600)),
                                      Text(data.transactionNarration,
                                          style: TextStyle(
                                              color: Colors.grey[850],
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                          ],
                        ),
                      );
                    });
}
