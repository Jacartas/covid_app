import 'package:flutter/material.dart';
import 'package:covid_app/Services/getnews.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {

  List<Articles> news;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupNews();
  }

  Future<void> setupNews() async{
    GetNews instance = GetNews(language: 'pt');
    print('ya');
    await instance.setupNews();
    setState(() {
      news= instance.getNews();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
        future: setupNews(),
        builder: (context, snapshot){
          if (news!=null){
            return ListView.builder(
              itemCount: news.length,
              itemBuilder: (context , index) {
                return GestureDetector(
                  onTap: () {
                    launchURL(news[index].url);
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Image.network(news[index].urlToImage),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    news[index].title,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    news[index].description,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ),
                );
              },
            );
          }else {
            return Center(child: CircularProgressIndicator());
          }
        }
      ),
    );
  }

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

