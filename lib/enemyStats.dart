import 'package:flutter/material.dart';

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

  _EnemyStatsState(enemyJson, enemyName, enemyStats, updateEnemyStats) {
    this.enemyJson = enemyJson;
    this.enemyStats = enemyStats;
    this.updateEnemyStats = updateEnemyStats;
    this.enemyName = enemyName;
  }

  @override
  void initState() {
    super.initState();
    print(enemyJson);
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
                                          child: Text(
                                            'Health: 12',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'Range: 5',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
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
                                          child: Text(
                                            'Movement: -',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'Attack: 5',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Attackers gain disadvantage\nretaliate 3 range 3',
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
                                children: [
                                  Container(
                                    width: 70,
                                    height: 10,
                                    color: Colors.yellow[800],
                                  ),
                                ],
                              ),
                            ))
                          ],
                        ), // row of two columns with the stats for normal and elite
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 2,
              child: Container() // bottom individual enemy previews section
              )
        ],
      ),
    );
  }
}
