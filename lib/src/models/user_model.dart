import 'dart:convert';

class UserModel {
    UserModel({
        required this.userId,
        required this.id,
        required this.title,
        required this.body,
    });

    final int userId;
    final int id;
    final String title;
    final String body;

    factory UserModel.fromRawJson(String str) => UserModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userId: json["userId"] ?? '1',
        id: json["id"] ?? '1',
        title: json["title"] ?? '1',
        body: json["body"] ?? '1',
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };
}
