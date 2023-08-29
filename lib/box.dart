import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(1),
      child: Container(
        height: 120,
        color: Colors.grey.withOpacity(0.12),
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(8),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Task One',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                  ),

                ),
                Text('Your personal task management and planning solution for planning your day, week & months.'),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Text('12:55 pm 25th May, 2023', textAlign: TextAlign.right,style: TextStyle(fontSize: 12)),
            ),
          ],
        ),
      ),
    );
  }
}