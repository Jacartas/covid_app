import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';


class GetNews{

  String language;
  List<Articles> news;
  final String apiKey='apiKey=81e237fe49884280ad2f3d92fb45c3d3';

  GetNews({this.language});

  Future<void> setupNews() async {

    String url='https://newsapi.org/v2/everything?q=covid&sortBy=relevancy&' + apiKey;

    Response response = await get(url);
    Map data=  jsonDecode(response.body);
    print(data);
    NewsRequest newsRequest=NewsRequest.fromJson(data);
    news= NewsRequest.fromJson(data).articles;
    print('dados finais');
  }

  List<Articles> getNews(){
    print(news.length);
    return news;
  }

}

class NewsRequest {
  final String status;
  final int totalResults;
  final List<Articles> articles;

  NewsRequest({this.status, this.totalResults, this.articles});

  factory NewsRequest.fromJson(Map<String, dynamic> parsedJson){
    var list = parsedJson['articles'] as List;
    print(list.runtimeType);
    List<Articles> articleslist = list.map((e) => Articles.fromJson(e)).toList();

    return NewsRequest(
      status: parsedJson['status'],
      totalResults: parsedJson['totalResults'],
      articles: articleslist,
    );
  }
}

class Articles {
  final Source source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  Articles({this.source, this.author, this.title, this.description, this.url,
    this.urlToImage, this.publishedAt, this.content});
  factory Articles.fromJson(Map<String,dynamic> parsedJson){

    return Articles(
      source: Source.fromJson(parsedJson),
      author: parsedJson['author'],
      title: parsedJson['title'],
      description: parsedJson['description'],
      url: parsedJson['url'],
      urlToImage: parsedJson['urlToImage'],
      publishedAt: parsedJson['publishedAt'],
      content: parsedJson['content'],
    );
  }
}

class Source {
  final String id;
  final String name;

  Source({this.id, this.name});

  factory Source.fromJson(Map<String,dynamic> parsedJson) {
    return Source(
      id: parsedJson['id'],
      name: parsedJson['name'],
    );
  }
}