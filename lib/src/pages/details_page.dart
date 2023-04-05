import 'package:desafio_dreamlabs/src/models/user_model.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    final product = args as UserModel;
    return Scaffold(
      appBar: AppBar(
        title: Text('Informações do arquivo ${args.id}'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text(
              product.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          // const Divider(
          //   color: Colors.black,
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              args.body,
              style: const TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}
