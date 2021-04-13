import 'package:flutter/material.dart';

import 'enemyTypes.dart';

class ScenarioLevel extends StatefulWidget {
  @override
  _ScenarioLevelState createState() => _ScenarioLevelState();
}

class _ScenarioLevelState extends State<ScenarioLevel> {
  var selectedLevel;
  var levelTexts = ['0', '1', '2', '3', '4', '5', '6', '7'];

  void selectLevel(newLevel) {
    setState(() {
      if (selectedLevel != null)
        levelTexts[selectedLevel] =
            '$selectedLevel'; // Make sure a level has been selected before trying to use it
      levelTexts[newLevel] = '~ $newLevel ~';
      selectedLevel = newLevel;
    });
  }

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
                  GestureDetector(
                    onTap: () => {selectLevel(0)},
                    child: Text(
                      levelTexts[0],
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => {selectLevel(1)},
                    child: Text(
                      levelTexts[1],
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => {selectLevel(2)},
                    child: Text(
                      levelTexts[2],
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => {selectLevel(3)},
                    child: Text(
                      levelTexts[3],
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => {selectLevel(4)},
                    child: Text(
                      levelTexts[4],
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => {selectLevel(5)},
                    child: Text(
                      levelTexts[5],
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => {selectLevel(6)},
                    child: Text(
                      levelTexts[6],
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => {selectLevel(7)},
                    child: Text(
                      levelTexts[7],
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
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
                    if (selectedLevel != null)
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return EnemyTypes(selectedLevel);
                            },
                          ),
                        ),
                      }
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
