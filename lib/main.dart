
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/resep_providers.dart';
import 'package:flutter_application_1/screens/resep_screens.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ResepProvider>(
          create: (context) => ResepProvider(),
        ),
        ChangeNotifierProvider<ResepDetailProvider>(
          create: (context) => ResepDetailProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Aplikasi Resep Makanan',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ResepScreen(),
      ),
    );
  }
}