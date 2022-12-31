import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uas_pbmpratikum/page/login_page.dart';
import 'package:uas_pbmpratikum/provider/change_notifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => stateManagement(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UAS PBM',
        home: LoginPage(),
      ),
    );
  }
}
