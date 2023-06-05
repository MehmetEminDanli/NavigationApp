import 'package:flutter/material.dart';
import 'package:sinav/utils/mydrawer.dart';

class Hello extends StatefulWidget {
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  String name = "Mehmet Emin Danlı";
  num counter = 31;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        actions: const [
          Icon(Icons.settings),
          SizedBox(
            width: 10,
          )
        ],
      ),
      drawer: const MyDrawer(),
      body: Container(alignment: Alignment.center, child: Text("$counter")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
          //debugPrint("$counter");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
