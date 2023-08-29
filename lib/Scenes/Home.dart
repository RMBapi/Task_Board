
import 'package:flutter/material.dart';

import 'Task Board.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to",
              style:TextStyle(
                fontSize: 18,
              ) ,

            ),

            Text(
              'Plan IT',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),

            SizedBox(
              height: 300,
            ),

            Text(
              'Your Personal task management\n          and planning solution',
              style: TextStyle(
                fontSize: 18,
                  fontWeight: FontWeight.w300

              ),
            ),

            InkWell(
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context){
                      return Taskboard();
                    })
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                padding:EdgeInsets.symmetric(vertical: 10,horizontal: 25) ,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
                child:Text("Let's Get started",
                  style: TextStyle(
                    color: Colors.white,
                  ),) ,
              ),
            )

          ],
        ),
      ),
    );
  }
}
