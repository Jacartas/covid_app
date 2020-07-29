import 'package:flutter/material.dart';

class Symptoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 10,),
          Text('Symptoms',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
            ),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.sentiment_dissatisfied, size: 20,),
            ],
          ),
        ],
      ),
    );
  }
}
