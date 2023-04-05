import 'dart:convert';
import 'package:desafio_dreamlabs/src/models/user_model.dart';
import 'package:desafio_dreamlabs/src/repositories/home_repository.dart';
import 'package:http/http.dart' as http;

class HomeRepositoryImp implements HomeRepository {
  Uri url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

  @override
  Future<List<UserModel>> getUsers() async {
    final response = await http.get(url);

    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap
        .map<UserModel>((resp) => UserModel.fromJson(resp))
        .toList();
  }
}
