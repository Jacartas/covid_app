import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Symptoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[

          Padding(
            padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
            child: Text('COVID-19 may affect different people in different ways. Here are some of the symptoms:',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(10, 15, 0, 10),
            child: Row(
              children: <Widget>[
                Icon(Icons.error_outline),
                SizedBox(width: 5,),
                Text('Most Common Symptoms:',
                  style: TextStyle(
                  fontSize: 23,
                 ),
                ),
              ],
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
            child: Row(
              children: <Widget>[
                Icon(Icons.error),
                SizedBox(width: 5,),
                Text('Less Common Symptoms:',
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
              ],
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
            child: Row(
              children: <Widget>[
                Icon(Icons.warning),
                SizedBox(width: 5,),
                Text('Serious Symptoms:',
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
              ],
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
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
            child: Text('Seek immediate medical attention if you have serious symptoms.'
                '  Always call before visiting your doctor or health facility',
              style: TextStyle(
                fontSize: 17,
                height: 1.1,

              ),
            ),
          ),
          RaisedButton.icon(
              onPressed: () { launch('https://www.who.int/health-topics/coronavirus#tab=tab_1'); },
                icon: Icon(Icons.add),
                  label: Text('More Information'),
                    color:Colors.grey[500],),
        ],
      ),
    );
  }
}
