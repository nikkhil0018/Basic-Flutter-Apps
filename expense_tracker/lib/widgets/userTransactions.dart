import 'package:flutter/material.dart';
import './transactionList.dart';
import './newTransaction.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 79.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Groceries', amount: 17.19, date: DateTime.now()),
    Transaction(
        id: 't3', title: 'Pay For Gym', amount: 15.99, date: DateTime.now()),
    Transaction(
        id: 't4',
        title: 'Buy Android Phone',
        amount: 139.39,
        date: DateTime.now()),
    Transaction(
        id: 't5', title: 'Book Office', amount: 150.00, date: DateTime.now()),
  ];

  void _addTransactions(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addTransactions),
        TransactionList(_userTransactions),
      ],
    );
  }
}
