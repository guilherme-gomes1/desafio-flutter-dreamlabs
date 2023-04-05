import 'package:desafio_dreamlabs/src/models/user_model.dart';
import 'package:desafio_dreamlabs/src/repositories/home_repository.dart';
import 'package:desafio_dreamlabs/src/repositories/home_repository_imp.dart';

class HomeController {
  final HomeRepository repository = HomeRepositoryImp();

  Future<List<UserModel>> getData() async {
    final response = await repository.getUsers();
    await Future.delayed(const Duration(seconds: 2));
    return response;
  }
}