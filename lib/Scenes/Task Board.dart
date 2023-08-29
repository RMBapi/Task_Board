import 'package:flutter/material.dart';
import 'package:new_project_2/box.dart';

class Taskboard extends StatefulWidget {
  const Taskboard({super.key});

  @override
  State<Taskboard> createState() => _TaskboardState();
}

class _TaskboardState extends State<Taskboard> {
  int _counter = 1;
  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Task Board"),
        centerTitle: true,
    ),

      body: ListView.builder(
         itemCount: _posts.length,
         itemBuilder: (context,index){
           return MyBox();
         }
         ),


    floatingActionButton: FloatingActionButton(
      onPressed: () {
        ListView.builder(
            itemCount: _counter++,
            itemBuilder: (context,index){
              return MyBox();
            }
        );
      },
      backgroundColor: Colors.grey,
      shape: CircleBorder(eccentricity: 1),
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
    ),




    );
  }
}
