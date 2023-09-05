

import 'dart:convert';

import 'package:flutter/services.dart';

import '../model/customer_transaction_data.dart';

Future<List<CustomerTransaction>> customerData() async {
  String jsonString = await rootBundle.loadString('assets/data.json');
  // File file = File('assets/data.json');
  // String jsonString = file.readAsStringSync();
  final Map<String, dynamic> data = json.decode(jsonString);

  print(data);

  List jsonData = data['customerTransactionData'];

  List<CustomerTransaction> results =
      jsonData.map((e) => CustomerTransaction.fromJson(e)).toList();

  print('-------results------');

  print(results);

  return results;
}

Future<List<CustomerTransaction>> customerCreditData() async {
  String jsonString = await rootBundle.loadString('assets/data.json');
  // File file = File('assets/data.json');
  // String jsonString = file.readAsStringSync();
  final Map<String, dynamic> data = json.decode(jsonString);

  print(data);

  List jsonData = data['customerTransactionData'];

  List<CustomerTransaction> results =
      jsonData.map((e) => CustomerTransaction.fromJson(e)).where((element) => element.transactionDirection =="C").toList();

  print('-------results------');

  print(results);

  return results;
}


Future<List<CustomerTransaction>> customerDebitData() async {
  String jsonString = await rootBundle.loadString('assets/data.json');
  // File file = File('assets/data.json');
  // String jsonString = file.readAsStringSync();
  final Map<String, dynamic> data = json.decode(jsonString);

  print(data);

  List jsonData = data['customerTransactionData'];

  List<CustomerTransaction> results =
      jsonData.map((e) => CustomerTransaction.fromJson(e)).where((element) => element.transactionDirection =="D").toList();

  print('-------results------');

  print(results);

  return results;
}