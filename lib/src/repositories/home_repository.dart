import 'package:desafio_dreamlabs/src/models/user_model.dart';

abstract class HomeRepository {
  Future<List<UserModel>> getUsers();

}