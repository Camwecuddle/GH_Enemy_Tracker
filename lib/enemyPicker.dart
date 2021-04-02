import 'package:flutter/material.dart';

import 'enemyStats.dart';

// ignore: must_be_immutable
class EnemyPicker extends StatefulWidget {
  var enemyNames;
  var newJson;

  EnemyPicker(enemyNames, newJson) {
    this.enemyNames = enemyNames;
    this.newJson = newJson;
  }

  @override
  _EnemyPickerState createState() =>
      _EnemyPickerState(this.enemyNames, this.newJson);
}

class _EnemyPickerState extends State<EnemyPicker> {
  var enemyNames;
  var newJson;
  var enemyStats;

  _EnemyPickerState(enemyNames, newJson) {
    this.enemyNames = enemyNames;
    this.newJson = newJson;
  }

  @override
  void initState() {
    super.initState();
    enemyStats = [];
    // I need to make an object that will store all the data from each enemy type
    // could be different objects for each enemy type or one object with all
    // health and status effects
    //
    // also need to write functions in here that mutate the data and then pass those to the individual enemy stats pages
  }

  void updateEnemyStats(enemyIndex, updatedStats) {
    enemyStats[enemyIndex] = updatedStats;
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
                                    return EnemyStats(newJson[0], enemyNames[0],
                                        enemyStats, updateEnemyStats);
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
                                        image: NetworkImage(newJson[0]
                                            [enemyNames[0]]['picture']),
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
                                        image: NetworkImage(newJson[1]
                                            [enemyNames[1]]['picture']),
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
                                        image: NetworkImage(newJson[2]
                                            [enemyNames[2]]['picture']),
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
                                        image: NetworkImage(newJson[3]
                                            [enemyNames[3]]['picture']),
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
                                        image: NetworkImage(newJson[4]
                                            [enemyNames[4]]['picture']),
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
                                        image: NetworkImage(newJson[5]
                                            [enemyNames[5]]['picture']),
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
                                        image: NetworkImage(newJson[6]
                                            [enemyNames[6]]['picture']),
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
                                        image: NetworkImage(newJson[7]
                                            [enemyNames[7]]['picture']),
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
