import 'package:flutter/material.dart';
import 'package:covid_app/Services/getnews.dart';
import 'package:url_launcher/url_launcher.dart';

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

  void setupNews() async{
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
      child: ListView.builder(
        itemCount: news.length,
        itemBuilder: (context,index) {
          return Card(
            child: ListTile(
              onTap: () {
                launchURL(news[index].url);
              },
              title: Text(news[index].title),
              leading: Image.network(news[index].urlToImage),
            ),
          );
        },
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

