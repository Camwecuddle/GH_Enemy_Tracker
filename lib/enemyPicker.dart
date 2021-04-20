import 'package:flutter/material.dart';
import 'package:gh_enemy_tracker/scenariolevel.dart';

import 'enemyStats.dart';

// ignore: must_be_immutable
class EnemyPicker extends StatefulWidget {
  var enemyNames;
  var newJson;
  var scenarioLevel;

  EnemyPicker(scenarioLevel, enemyNames, newJson) {
    this.scenarioLevel = scenarioLevel;
    this.enemyNames = enemyNames;
    this.newJson = newJson;
  }

  @override
  _EnemyPickerState createState() =>
      _EnemyPickerState(this.scenarioLevel, this.enemyNames, this.newJson);
}

class _EnemyPickerState extends State<EnemyPicker> {
  var scenarioLevel;
  var enemyNames;
  var newJson;
  var enemyStats;

  _EnemyPickerState(scenarioLevel, enemyNames, newJson) {
    this.scenarioLevel = scenarioLevel;
    this.enemyNames = enemyNames;
    this.newJson = newJson;
  }

  @override
  void initState() {
    super.initState();
    enemyStats = createEnemyStats();

    // Make an object with each enemy name as a key, and those keys values are just null until we click on an enemy
    // In the enemyStats page we will flush that out

    // I need to make an object that will store all the data from each enemy type
    // could be different objects for each enemy type or one object with all
    // health and status effects
    //
    // also need to write functions in here that mutate the data and then pass those to the individual enemy stats pages
  }

  Object createEnemyStats() {
    var temp = {};
    for (var name in enemyNames) {
      temp[name] = [];
      int i = 0;
      while (i < newJson[name]['maxEnemies']) {
        temp[name].add(null);
        i++;
      }
    }
    return temp;
  }

  // Pass this function on so that the child views can mutate the enemyStats object
  void updateEnemyStats(name, updatedStats) {
    enemyStats[name] = updatedStats;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 30, top: 50),
              alignment: Alignment.topLeft,
              child: Text(
                'Code: ',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all(0),
              // color: Colors.red[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      (enemyNames.length >
                              0) // If selected enemies at 0 is not null show the picture
                          ? GestureDetector(
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return EnemyStats(
                                        scenarioLevel,
                                        newJson[enemyNames[0]],
                                        enemyNames[0],
                                        enemyStats,
                                        updateEnemyStats);
                                  }),
                                )
                              },
                              child: Container(
                                // padding: EdgeInsets.only(left: 20),
                                // margin: EdgeInsets.only(right: 20),
                                height: MediaQuery.of(context).size.width * .35,
                                width: MediaQuery.of(context).size.width * .35,
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        alignment: FractionalOffset.center,
                                        image: NetworkImage(
                                          newJson[enemyNames[0]]['picture'],
                                        ),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Image.network(
                              '',
                              height: MediaQuery.of(context).size.width * .35,
                              width: MediaQuery.of(context).size.width * .35,
                            ),
                      (enemyNames.length >
                              1) // If selected enemies at 0 is not null show the picture
                          ? GestureDetector(
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return EnemyStats(
                                        scenarioLevel,
                                        newJson[enemyNames[1]],
                                        enemyNames[1],
                                        enemyStats,
                                        updateEnemyStats);
                                  }),
                                )
                              },
                              child: Container(
                                // padding: EdgeInsets.only(left: 20),
                                // margin: EdgeInsets.only(right: 20),
                                height: MediaQuery.of(context).size.width * .35,
                                width: MediaQuery.of(context).size.width * .35,
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        alignment: FractionalOffset.center,
                                        image: NetworkImage(
                                            newJson[enemyNames[1]]['picture']),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Image.network(
                              '',
                              height: MediaQuery.of(context).size.width * .35,
                              width: MediaQuery.of(context).size.width * .35,
                            ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      (enemyNames.length >
                              2) // If selected enemies at 0 is not null show the picture
                          ? GestureDetector(
                              onTap: () => {},
                              child: Container(
                                // padding: EdgeInsets.only(left: 20),
                                // margin: EdgeInsets.only(right: 20),
                                height: MediaQuery.of(context).size.width * .35,
                                width: MediaQuery.of(context).size.width * .35,
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        alignment: FractionalOffset.center,
                                        image: NetworkImage(
                                            newJson[enemyNames[2]]['picture']),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Image.network(
                              '',
                              height: MediaQuery.of(context).size.width * .35,
                              width: MediaQuery.of(context).size.width * .35,
                            ),
                      (enemyNames.length >
                              3) // If selected enemies at 0 is not null show the picture
                          ? GestureDetector(
                              onTap: () => {},
                              child: Container(
                                // padding: EdgeInsets.only(left: 20),
                                // margin: EdgeInsets.only(right: 20),
                                height: MediaQuery.of(context).size.width * .35,
                                width: MediaQuery.of(context).size.width * .35,
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        alignment: FractionalOffset.center,
                                        image: NetworkImage(
                                            newJson[enemyNames[3]]['picture']),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Image.network(
                              '',
                              height: MediaQuery.of(context).size.width * .35,
                              width: MediaQuery.of(context).size.width * .35,
                            ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      (enemyNames.length >
                              4) // If selected enemies at 0 is not null show the picture
                          ? GestureDetector(
                              onTap: () => {},
                              child: Container(
                                // padding: EdgeInsets.only(left: 20),
                                // margin: EdgeInsets.only(right: 20),
                                height: MediaQuery.of(context).size.width * .35,
                                width: MediaQuery.of(context).size.width * .35,
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        alignment: FractionalOffset.center,
                                        image: NetworkImage(
                                            newJson[enemyNames[4]]['picture']),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Image.network(
                              '',
                              height: MediaQuery.of(context).size.width * .35,
                              width: MediaQuery.of(context).size.width * .35,
                            ),
                      (enemyNames.length >
                              5) // If selected enemies at 0 is not null show the picture
                          ? GestureDetector(
                              onTap: () => {},
                              child: Container(
                                // padding: EdgeInsets.only(left: 20),
                                // margin: EdgeInsets.only(right: 20),
                                height: MediaQuery.of(context).size.width * .35,
                                width: MediaQuery.of(context).size.width * .35,
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        alignment: FractionalOffset.center,
                                        image: NetworkImage(
                                            newJson[enemyNames[5]]['picture']),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Image.network(
                              '',
                              height: MediaQuery.of(context).size.width * .35,
                              width: MediaQuery.of(context).size.width * .35,
                            ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      (enemyNames.length >
                              6) // If selected enemies at 0 is not null show the picture
                          ? GestureDetector(
                              onTap: () => {},
                              child: Container(
                                // padding: EdgeInsets.only(left: 20),
                                // margin: EdgeInsets.only(right: 20),
                                height: MediaQuery.of(context).size.width * .35,
                                width: MediaQuery.of(context).size.width * .35,
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        alignment: FractionalOffset.center,
                                        image: NetworkImage(
                                            newJson[enemyNames[6]]['picture']),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Image.network(
                              '',
                              height: MediaQuery.of(context).size.width * .35,
                              width: MediaQuery.of(context).size.width * .35,
                            ),
                      (enemyNames.length >
                              7) // If selected enemies at 0 is not null show the picture
                          ? GestureDetector(
                              onTap: () => {},
                              child: Container(
                                // padding: EdgeInsets.only(left: 20),
                                // margin: EdgeInsets.only(right: 20),
                                height: MediaQuery.of(context).size.width * .35,
                                width: MediaQuery.of(context).size.width * .35,
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        alignment: FractionalOffset.center,
                                        image: NetworkImage(
                                            newJson[enemyNames[7]]['picture']),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Image.network(
                              '',
                              height: MediaQuery.of(context).size.width * .35,
                              width: MediaQuery.of(context).size.width * .35,
                            ),
                    ],
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
                    'Done',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  onPressed: () => {
                    Navigator.of(context).popUntil((route) => route.isFirst),
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
