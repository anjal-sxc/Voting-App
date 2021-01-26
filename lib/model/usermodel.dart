import 'dart:convert';

class Articles {
  final int id;
  final String title, author, email, date;

  Articles({this.id, this.title, this.author, this.email, this.date});

  factory Articles.fromJson(Map<String, dynamic> json) {
    return Articles(
        id: json['id'] ?? -1,
        title: json['title'] ?? -1,
        author: json['author'] ?? -1,
        email: json['email'] ?? -1,
        date: json['date'] ?? -1);
  }

  static List<Articles> mapArray(String responseBody) {
    final mapped = json.decode(responseBody).cast<Map<String, dynamic>>();
    return mapped.map<Articles>((json) => Articles.fromJson(json)).toList();
  }
}
