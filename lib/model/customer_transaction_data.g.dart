// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_transaction_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerTransaction _$CustomerTransactionFromJson(Map<String, dynamic> json) =>
    CustomerTransaction(
      customerID: json['customerID'] as String,
      transactionAmount: json['transactionAmount'] as int,
      transactionDirection: json['transactionDirection'] as String,
      transactionNarration: json['transactionNarration'] as String,
      transactionDate: json['transactionDate'] as String?,
    );

Map<String, dynamic> _$CustomerTransactionToJson(
        CustomerTransaction instance) =>
    <String, dynamic>{
      'customerID': instance.customerID,
      'transactionDirection': instance.transactionDirection,
      'transactionNarration': instance.transactionNarration,
      'transactionAmount': instance.transactionAmount,
      'transactionDate': instance.transactionDate,
    };
