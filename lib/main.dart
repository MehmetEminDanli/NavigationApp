import 'package:flutter/material.dart';
import 'package:sinav/screens/counter.dart';
import 'package:sinav/screens/hello.dart';
import 'package:sinav/screens/liste.dart';
import 'package:sinav/screens/todolist.dart';
import 'package:sinav/screens/todolistmodel.dart';
import 'package:sinav/screens/welcome.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mehmet Emin Danlı",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      /*  home: const Counter(), */
      initialRoute: "/",
      routes: {
        "/": (context) => const welcome(),
        "counter": (context) => const Counter(),
        "liste": (context) => const Liste(),
        "todolist": (context) => const TodoList(),
        "todolistmodel": (context) => const TodoListModel(),
        "welcome": (context) => const welcome()
      },
    );
  }
}
