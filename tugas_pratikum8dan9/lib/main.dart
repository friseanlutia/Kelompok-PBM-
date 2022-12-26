import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_pratikum8dan9/provider/change_notifier.dart';
import 'package:tugas_pratikum8dan9/ui/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => stateManagement(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News',
        home: LoginPage(),
      ),
    );
  }
}
