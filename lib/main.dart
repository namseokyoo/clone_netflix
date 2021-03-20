import 'package:clone_netflix/screen/like_screen.dart';
import 'package:clone_netflix/screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:clone_netflix/screen/home_screen.dart';
import 'package:clone_netflix/widget/bottom_bar.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'purierFlix',
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.black,
            accentColor: Colors.white),
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
              body: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  HomeScreen(),
                  SearchScreen(),
                  LikeScreen(),
                  Container(
                    child: Center(
                      child: Text('more'),
                    ),
                  ),
                ],
              ),
              bottomNavigationBar: Bottom(),
            )));
  }
}
