import 'package:flutter/material.dart';
import 'package:fluttooth/pages/home_page.dart';
import 'package:toastification/toastification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fluttooth',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 0, 47, 167)),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
