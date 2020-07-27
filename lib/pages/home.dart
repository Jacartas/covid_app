import 'package:covid_app/pages/Cases.dart';
import 'package:covid_app/pages/symptoms.dart';
import 'package:flutter/material.dart';

import 'about_covid.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentIndex= 1;

  Widget page(index){
    switch (currentIndex) {
      case 0:
        return Symptoms();
      case 1:
        return Cases();
      case 2:
        return News();
      default:
        return Cases();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.warning),
            title: Text('Symptoms'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subject),
            title: Text('News'),
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      body: page(currentIndex),
    );
  }
}
