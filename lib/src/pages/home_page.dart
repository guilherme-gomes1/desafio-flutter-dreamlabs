import 'package:desafio_dreamlabs/src/controllers/home_controller.dart';
import 'package:desafio_dreamlabs/src/models/user_model.dart';
import 'package:desafio_dreamlabs/src/utils/app_routs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeController _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<UserModel>>(
          future: _controller.getData(),
          builder: (_, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data?.length ?? 0,
                  itemBuilder: (_, idx) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: ListTile(
                            title: Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                snapshot.data![idx].title,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            subtitle: Text(
                              snapshot.data![idx].body,
                            ),
                            trailing: IconButton(
                              icon: const Icon(Icons.arrow_forward),
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                    AppRouts.detailsPage,
                                    arguments: snapshot.data![idx]);
                              },
                            ),
                            onTap: () => Navigator.of(context).pushNamed(
                                AppRouts.detailsPage,
                                arguments: snapshot.data![idx]),
                          ),
                        ),
                        const Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ],
                    );
                  });
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Container();
          }),
    );
  }
}
