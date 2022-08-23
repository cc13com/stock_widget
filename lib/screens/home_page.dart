import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stocks'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          //return StockDetails();
          return const StockDetails1();
        },
      ),
    );
  }
}

class StockDetails extends StatelessWidget {
  const StockDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              RichText(
                text: const TextSpan(
                    text: 'very long Longname',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' (very long Symbol)',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )
                    ]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: [
                  Text('hier1'),
                ],
              ),
              Column(
                children: [
                  Text('hier2'),
                ],
              ),
              Column(
                children: [
                  Text('hier3'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class StockDetails1 extends StatelessWidget {
  const StockDetails1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [stock, stockDetails],
      ),
    );
  }
}

var stock = Container(
  padding: EdgeInsets.all(5),
  child: Row(
    children: [
      RichText(
        text: const TextSpan(
            text: 'very long Longname',
            style: TextStyle(fontSize: 24, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: ' (very long Symbol)',
                style: TextStyle(fontSize: 16, color: Colors.black),
              )
            ]),
      ),
    ],
  ),
);

final stockDetails = Container(
  padding: const EdgeInsets.all(5),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Amount / buy Price1'),
          Text(
            'Stop Kurs (last changed)',
            style: TextStyle(color: Colors.green, fontSize: 16),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Price',
            style: TextStyle(fontSize: 16, color: Colors.red),
          ),
          Text(
            'last Update',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Change €',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Change %',
            style: TextStyle(fontSize: 16),
          ),
        ],
      )
    ],
  ),
);
