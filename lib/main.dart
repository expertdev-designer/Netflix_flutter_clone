import 'package:flutter/material.dart';
import 'package:netflix_clone_flutter/Content_categories/home_page_view.dart';
import 'package:netflix_clone_flutter/user_profile_management/profile_options.dart';
import 'package:netflix_clone_flutter/user_registration/get_started.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: ProfileOptiond(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
