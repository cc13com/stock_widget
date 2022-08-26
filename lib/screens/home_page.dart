import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isDark = false;

  final List<String> longnames = <String>[
    'NVIDIA CORP',
    'TARGET CORP. DL-,0833',
    'TOMRA SYSTEMS ASA NK-,50'
  ];

  final myNames = List<String>.generate(3, (index) => 'Product $index');

  final List<String> symbol = <String>['NVD.DE', 'DYH.F', 'TMRA.F'];
  final List<int> amount = <int>[30, 23, 13];
  final List<double> buyprice = <double>[123.23, 44.23, 998.99];
  final List<double> stop = <double>[120.01, 50.21, 555.90];
  final List<double> price = <double>[234.99, 49.00, 600.00];
  final List<String> lastChangeStop = <String>[
    '01.08.2022',
    '13.06.2022',
    '26.08.2022'
  ];
  final List<String> lastUpdate = <String>[
    '26.08.2022',
    '25.08.2022',
    '26.08.2022'
  ];

  final List<double> changeEuro = <double>[12345.01, 3245.34, 54325.89];
  final List<double> changePercent = <double>[12.5, 166.4, 1238.2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stocks'),
        actions: [
          CupertinoSwitch(
              value: _isDark,
              onChanged: (v) {
                setState(() {
                  _isDark = !_isDark;
                });
              })
        ],
      ),
      body: ListView.builder(
        itemCount: longnames.length,
        itemBuilder: (context, index) {
          //return StockDetails();
          //return const StockDetails1();
          return Card(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      RichText(
                        text: TextSpan(
                            text: longnames[index],
                            style: TextStyle(fontSize: 24),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' (' + symbol[index] + ')',
                                style: TextStyle(fontSize: 16),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${amount[index]} / ${buyprice[index]} €'),
                          Text(
                            '${stop[index]} € (${lastChangeStop[index]})',
                            style: TextStyle(color: Colors.green, fontSize: 16),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${price[index]} €',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${lastUpdate[index]}',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${changeEuro[index]} €',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${changePercent[index]} %',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget StockDetails2(BuildContext context, int index) {
    return Card(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                RichText(
                  text: const TextSpan(
                      text: 'very long ',
                      style: TextStyle(fontSize: 24),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' (very long Symbol)',
                          style: TextStyle(fontSize: 16),
                        )
                      ]),
                ),
              ],
            ),
          ),
          Container(
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
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Change %',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
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
            style: TextStyle(fontSize: 24),
            children: <TextSpan>[
              TextSpan(
                text: ' (very long Symbol)',
                style: TextStyle(fontSize: 16),
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
            style: TextStyle(
                fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold),
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
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            'Change %',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      )
    ],
  ),
);
