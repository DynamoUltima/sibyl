import 'package:json_annotation/json_annotation.dart';

part 'customer_transaction_data.g.dart';

@JsonSerializable()
class CustomerTransaction {
  /// The generated code assumes these values exist in JSON.
  final String customerID, transactionDirection, transactionNarration;

  final int transactionAmount;

  /// The generated code below handles if the corresponding JSON value doesn't
  /// exist or is empty.
  final String? transactionDate;

  CustomerTransaction(
      {required this.customerID,
      required this.transactionAmount,
      required this.transactionDirection,
      required this.transactionNarration,
      this.transactionDate});

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory CustomerTransaction.fromJson(Map<String, dynamic> json) =>
      _$CustomerTransactionFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CustomerTransactionToJson(this);
}
