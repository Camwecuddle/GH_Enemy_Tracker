import 'package:flutter/material.dart';

import 'enemyTypes.dart';

class ScenarioLevel extends StatefulWidget {
  @override
  _ScenarioLevelState createState() => _ScenarioLevelState();
}

class _ScenarioLevelState extends State<ScenarioLevel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(left: 30, top: 50),
              // color: Colors.red,
              alignment: Alignment.topLeft,
              child: Text(
                'Scenario\nLevel',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              // color: Colors.blue[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '0',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    '1',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    '2',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    '3',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    '4',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    '5',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    '6',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    '7',
                    style: Theme.of(context).textTheme.headline4,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.blue[300],
              child: Center(
                child: TextButton(
                  child: Text(
                    'Ok',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return EnemyTypes();
                      }),
                    )
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
