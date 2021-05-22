import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placeholder_cleanarchitecture/features/app/presentation/pages/home/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (_) => HomePage(),
      },
    );
  }
}
