import 'package:desafio_dreamlabs/src/pages/details_page.dart';
import 'package:desafio_dreamlabs/src/pages/home_page.dart';
import 'package:desafio_dreamlabs/src/utils/app_routs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRouts.home,
      routes: {
        AppRouts.home:(context) => HomePage(),
        AppRouts.detailsPage:(context) => const DetailsPage(),
      },
    );
  }
}
