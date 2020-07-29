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
              fontSize: 30,
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 15, 0, 10),
            child: Text('Most Common Symptoms:',
              style: TextStyle(
              fontSize: 25,
             ),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
            child: Text('fever \ndry cough \ntiredness',
              style: TextStyle(
                fontSize: 20,
                height: 1.1,

              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
            child: Text('Less Common Symptoms:',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
            child: Text('aches and pains \nsore throat \ndiarrhoea \nconjunctivitis \nheadache'
                ' \nloss of taste or smell \na rash on skin, or discolouration of fingers or toes',
              style: TextStyle(
                fontSize: 20,
                height: 1.1,

              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
            child: Text('Serious Symptoms:',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
            child: Text('difficulty breathing or shortness of breath \nchest pain or pressure \nloss of speech or movement',
              style: TextStyle(
                fontSize: 20,
                height: 1.1,

              ),
            ),
          ),
        ],
      ),
    );
  }
}
