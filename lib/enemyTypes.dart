import 'package:flutter/material.dart';

class EnemyTypes extends StatefulWidget {
  @override
  _EnemyTypesState createState() => _EnemyTypesState();
}

class _EnemyTypesState extends State<EnemyTypes> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.red,
            padding: EdgeInsets.only(left: 30, top: 50),
            // color: Colors.red,
            alignment: Alignment.topLeft,
            child: Text(
              'Enemies',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.red[200],
          ),
        ),
        Expanded(
          flex: 3,
          child: Scaffold(
            body: Column(
              children: [
                Container(
                  color: Colors.blue,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.red[300],
          ),
        ),
      ],
    ));
  }
}
