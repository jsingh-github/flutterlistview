import 'package:flutter/material.dart';
import 'package:listprint/coin_class.dart';

class ListCurrency extends StatefulWidget {
  @override
  _ListCurrencyState createState() => _ListCurrencyState();
}

class _ListCurrencyState extends State<ListCurrency> {
  String selectedCurrency = 'USD';
  CoinData coinData = CoinData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            color: Colors.grey,
            child: Center(
              child: FlatButton(
                child: Text('Print List'),
                onPressed: () {
                  print(coinData.currenciesList);
                },
                color: Colors.deepOrange,
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: DropdownButton<String>(
              value: selectedCurrency,
            items: coinData.currenciesList.map((currencyitem) {
              return DropdownMenuItem(
                  child: Text(currencyitem),
                  value: currencyitem,
              );
            }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCurrency = value;
                  print(selectedCurrency);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
