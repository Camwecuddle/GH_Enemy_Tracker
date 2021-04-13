import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EnemyStats extends StatefulWidget {
  var enemyJson;
  var enemyStats;
  var updateEnemyStats;
  var enemyName;

  EnemyStats(enemyJson, enemyName, enemyStats, updateEnemyStats) {
    this.enemyJson = enemyJson;
    this.enemyStats = enemyStats;
    this.updateEnemyStats = updateEnemyStats;
    this.enemyName = enemyName;
  }

  @override
  _EnemyStatsState createState() =>
      _EnemyStatsState(enemyJson, enemyName, enemyStats, updateEnemyStats);
}

class _EnemyStatsState extends State<EnemyStats> {
  var enemyJson;
  var enemyStats;
  var updateEnemyStats;
  var enemyName;
  var maxEnemies;
  var statusEffects;
  var scenarioLevel;
  String normalAttributeString = '';
  String eliteAttributeString = '';

  _EnemyStatsState(enemyJson, enemyName, enemyStats, updateEnemyStats) {
    this.enemyJson = enemyJson;
    this.enemyStats = enemyStats;
    this.updateEnemyStats = updateEnemyStats;
    this.enemyName = enemyName;
  }

  List<String> parseStatusEffects() {
    return [
      'fire',
      'earth',
      'darkness',
    ];
  }

  setAttributes() {
    // parses attributes for normal and elite then sets the variables
    for (var attribute in enemyJson['level'][scenarioLevel]['normal']
        ['attributes']) {
      normalAttributeString += '\n' + attribute;
    }

    for (var attribute in enemyJson['level'][scenarioLevel]['elite']
        ['attributes']) {
      eliteAttributeString += '\n' + attribute;
    }
  }

  @override
  void initState() {
    super.initState();
    maxEnemies = enemyJson['maxEnemies'];
    statusEffects = parseStatusEffects();
    scenarioLevel =
        4; // Hard coded for now because I haven't implemented picking a scenario level
    setAttributes();
    // print('CAAAAAAAAAAM');
    // print(enemyJson['level'][scenarioLevel]);
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
                // top stats section
                color: Color.fromRGBO(50, 50, 50, 1),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Row(
                          // enemy name and back button
                          children: [
                            Expanded(child: Container() // Back button
                                ),
                            Expanded(
                                flex: 5,
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  // color: Colors.purple,
                                  child: Text(
                                    enemyName,
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                  ),
                                )),
                            Expanded(
                                child:
                                    Container()), // empty, used to center the text
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        // List the enemy's stats
                        // margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              // normal stats
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 10,
                                    color: Colors.white,
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                // padding: EdgeInsets.only(left: 20),
                                                // margin: EdgeInsets.only(right: 20),
                                                height: 20,
                                                width: 20,
                                                child: Center(
                                                  child: AspectRatio(
                                                    aspectRatio: 1,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                        fit: BoxFit.fitWidth,
                                                        alignment:
                                                            FractionalOffset
                                                                .center,
                                                        image: AssetImage(
                                                            'assets/icons/gh_health_white.png'),
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                // enemyJson[scenarioLevel],
                                                '${enemyJson['level'][scenarioLevel]['normal']['health']}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                // padding: EdgeInsets.only(left: 20),
                                                // margin: EdgeInsets.only(right: 20),
                                                height: 20,
                                                width: 20,
                                                child: Center(
                                                  child: AspectRatio(
                                                    aspectRatio: 1,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                        fit: BoxFit.fitWidth,
                                                        alignment:
                                                            FractionalOffset
                                                                .center,
                                                        image: AssetImage(
                                                            'assets/icons/gh_range_white.png'),
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '${enemyJson['level'][scenarioLevel]['normal']['range']}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                // padding: EdgeInsets.only(left: 20),
                                                // margin: EdgeInsets.only(right: 20),
                                                height: 20,
                                                width: 20,
                                                child: Center(
                                                  child: AspectRatio(
                                                    aspectRatio: 1,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                        fit: BoxFit.fitWidth,
                                                        alignment:
                                                            FractionalOffset
                                                                .center,
                                                        image: AssetImage(
                                                            'assets/icons/gh_movement_white.png'),
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '${enemyJson['level'][scenarioLevel]['normal']['move']}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                // padding: EdgeInsets.only(left: 20),
                                                // margin: EdgeInsets.only(right: 20),
                                                height: 20,
                                                width: 20,
                                                child: Center(
                                                  child: AspectRatio(
                                                    aspectRatio: 1,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                        fit: BoxFit.fitWidth,
                                                        alignment:
                                                            FractionalOffset
                                                                .center,
                                                        image: AssetImage(
                                                            'assets/icons/gh_attack_white.png'),
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '${enemyJson['level'][scenarioLevel]['normal']['attack']}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 70,
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      normalAttributeString,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                            Expanded(
                                child: Container(
                              // elite stats
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 10,
                                    color: Colors.yellow[600],
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                // padding: EdgeInsets.only(left: 20),
                                                // margin: EdgeInsets.only(right: 20),
                                                height: 20,
                                                width: 20,
                                                child: Center(
                                                  child: AspectRatio(
                                                    aspectRatio: 1,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                        fit: BoxFit.fitWidth,
                                                        alignment:
                                                            FractionalOffset
                                                                .center,
                                                        image: AssetImage(
                                                            'assets/icons/gh_health_white.png'),
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '${enemyJson['level'][scenarioLevel]['elite']['health']}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                // padding: EdgeInsets.only(left: 20),
                                                // margin: EdgeInsets.only(right: 20),
                                                height: 20,
                                                width: 20,
                                                child: Center(
                                                  child: AspectRatio(
                                                    aspectRatio: 1,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                        fit: BoxFit.fitWidth,
                                                        alignment:
                                                            FractionalOffset
                                                                .center,
                                                        image: AssetImage(
                                                            'assets/icons/gh_range_white.png'),
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '${enemyJson['level'][scenarioLevel]['elite']['range']}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                // padding: EdgeInsets.only(left: 20),
                                                // margin: EdgeInsets.only(right: 20),
                                                height: 20,
                                                width: 20,
                                                child: Center(
                                                  child: AspectRatio(
                                                    aspectRatio: 1,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                        fit: BoxFit.fitWidth,
                                                        alignment:
                                                            FractionalOffset
                                                                .center,
                                                        image: AssetImage(
                                                            'assets/icons/gh_movement_white.png'),
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '${enemyJson['level'][scenarioLevel]['elite']['move']}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                // padding: EdgeInsets.only(left: 20),
                                                // margin: EdgeInsets.only(right: 20),
                                                height: 20,
                                                width: 20,
                                                child: Center(
                                                  child: AspectRatio(
                                                    aspectRatio: 1,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                        fit: BoxFit.fitWidth,
                                                        alignment:
                                                            FractionalOffset
                                                                .center,
                                                        image: AssetImage(
                                                            'assets/icons/gh_attack_white.png'),
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '${enemyJson['level'][scenarioLevel]['elite']['attack']}',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 70,
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      eliteAttributeString,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                          ],
                        ), // row of two columns with the stats for normal and elite
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 2,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(child: makeStatBox(1, 12, statusEffects)),
                          (maxEnemies > 2)
                              ? Expanded(
                                  child: makeStatBox(3, 12, statusEffects))
                              : SizedBox.shrink(),
                          (maxEnemies > 4)
                              ? Expanded(
                                  child: makeStatBox(5, 12, statusEffects))
                              : SizedBox.shrink(),
                          (maxEnemies > 6)
                              ? Expanded(
                                  child: makeStatBox(7, 12, statusEffects))
                              : SizedBox.shrink(),
                          (maxEnemies > 8)
                              ? Expanded(
                                  child: makeStatBox(9, 12, statusEffects))
                              : SizedBox.shrink(),
                        ],
                      ),
                    ),
                  ),
                  (maxEnemies >
                          1) // basically if this isn't a boss then render another column of enemies
                      ? Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                    child: makeStatBox(2, 12, statusEffects)),
                                (maxEnemies > 3)
                                    ? Expanded(
                                        child:
                                            makeStatBox(4, 12, statusEffects))
                                    : SizedBox.shrink(),
                                (maxEnemies > 5)
                                    ? Expanded(
                                        child:
                                            makeStatBox(6, 12, statusEffects))
                                    : SizedBox.shrink(),
                                (maxEnemies > 7)
                                    ? Expanded(
                                        child:
                                            makeStatBox(8, 12, statusEffects))
                                    : SizedBox.shrink(),
                                (maxEnemies > 9)
                                    ? Expanded(
                                        child:
                                            makeStatBox(10, 12, statusEffects))
                                    : SizedBox.shrink(),
                              ],
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ), // bottom individual enemy previews section
          ),
        ],
      ),
    );
  }

  Widget makeStatusPicture(effect) {
    return Container(
      height: 20,
      width: 20,
      child: Center(
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fitWidth,
              alignment: FractionalOffset.center,
              image: AssetImage('assets/icons/gh_$effect.png'),
            )),
          ),
        ),
      ),
    );
  }

  Widget makeStatBox(number, health, effects) {
    return Container(
      // Each of these will display health and status effects of one enemy
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
          color: Color.fromRGBO(50, 50, 50, 1),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              // top row that will have the enemy number in the top left and health in the middle
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(10),
                      // Top right box with number
                      child: Text(
                        '$number',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // top middle box with health
                      child: Column(
                        // need to split it into 2 to center the health in the entire box
                        children: [
                          Expanded(
                            child: Container(
                                // top of middle box used to center the health in the box below it
                                ),
                          ),
                          Expanded(
                            child: Container(
                              // conceptually the center box in a grid of 9 boxes
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    // padding: EdgeInsets.only(left: 20),
                                    // margin: EdgeInsets.only(right: 20),
                                    height: 25,
                                    width: 25,
                                    child: Center(
                                      child: AspectRatio(
                                        aspectRatio: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                            fit: BoxFit.fitWidth,
                                            alignment: FractionalOffset.center,
                                            image: AssetImage(
                                                'assets/icons/gh_health_maroon.png'),
                                          )),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '$health',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(), // To center the health
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              // bottom row that will have the enemy status effects
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    effects.length > 0
                        ? makeStatusPicture(effects[0])
                        : SizedBox.shrink(),
                    effects.length > 1
                        ? makeStatusPicture(effects[1])
                        : SizedBox.shrink(),
                    effects.length > 2
                        ? makeStatusPicture(effects[2])
                        : SizedBox.shrink(),
                    effects.length > 3
                        ? makeStatusPicture(effects[3])
                        : SizedBox.shrink(),
                    effects.length > 4
                        ? makeStatusPicture(effects[4])
                        : SizedBox.shrink(),
                    effects.length > 5
                        ? makeStatusPicture(effects[5])
                        : SizedBox.shrink(),
                    effects.length > 6
                        ? makeStatusPicture(effects[6])
                        : SizedBox.shrink(),
                    effects.length > 7
                        ? makeStatusPicture(effects[7])
                        : SizedBox.shrink(),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
