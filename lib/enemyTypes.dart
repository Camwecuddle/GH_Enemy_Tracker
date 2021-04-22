import 'package:flutter/material.dart';
import 'enemyFunctions.dart';
import 'enemyPicker.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';

class EnemyTypes extends StatefulWidget {
  var scenarioLevel;

  EnemyTypes(scenarioLevel) {
    this.scenarioLevel = scenarioLevel;
  }

  @override
  _EnemyTypesState createState() => _EnemyTypesState();
}

class _EnemyTypesState extends State<EnemyTypes> {
  List<String> selectedEnemies;
  var parsedEnemyData;
  var enemyData;
  var newJson;
  var enemyNames;

  int num = 0;

  void selectEnemy(enemy) {
    if (selectedEnemies.contains(enemy)) {
      // Do nothing
      // selectedEnemies.remove(enemy);
    } else {
      setState(() {
        selectedEnemies.add(enemy);
      });
    }
  }

  void removeEnemy(enemy) {
    setState(() {
      selectedEnemies.remove(enemy);
    });
  }

  // Here's the plan, parse the names at the start, do that while the page is loading in init state
  // now we start the page with the names and we make a listView of future builders for the imageUrls so they each load individually

  void initState() {
    super.initState();
    selectedEnemies = [];
    enemyData = loadJsonData();
    // Or maybe the problem is that I do this in init state so now my future builder is waiting for something that I already loaded? and it
    // just doesn't work right?
  }

  buildEnemyJson() {
    // takes the subset of selected enemy data from the larger json object
    var newJson = {};
    selectedEnemies.forEach((enemyName) {
      newJson[enemyName] = this.parsedEnemyData[0][enemyName];
      // newJson.add({enemyName: this.parsedEnemyData[0][enemyName]});
    });
    return newJson;
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
                  'Enemies',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  // color: Colors.red[200],
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      (selectedEnemies.length >
                              0) // If selected enemies at 0 is not null show the picture
                          ? GestureDetector(
                              onTap: () => {removeEnemy(selectedEnemies[0])},
                              child: Container(
                                // padding: EdgeInsets.only(left: 20),
                                // margin: EdgeInsets.only(right: 20),
                                height: MediaQuery.of(context).size.width * .2,
                                width: MediaQuery.of(context).size.width * .2,
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        alignment: FractionalOffset.center,
                                        image: NetworkImage(this
                                                .parsedEnemyData[0]
                                            [selectedEnemies[0]]['picture']),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Image.network(
                              '',
                              height: MediaQuery.of(context).size.width * .2,
                              width: MediaQuery.of(context).size.width * .2,
                            ),
                      (selectedEnemies.length >
                              1) // If selected enemies at 0 is not null show the picture
                          ? GestureDetector(
                              onTap: () => {removeEnemy(selectedEnemies[1])},
                              child: Container(
                                // padding: EdgeInsets.only(left: 20),
                                // margin: EdgeInsets.only(right: 20),
                                height: MediaQuery.of(context).size.width * .2,
                                width: MediaQuery.of(context).size.width * .2,
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        alignment: FractionalOffset.center,
                                        image: NetworkImage(this
                                                .parsedEnemyData[0]
                                            [selectedEnemies[1]]['picture']),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Image.network(
                              '',
                              height: MediaQuery.of(context).size.width * .2,
                              width: MediaQuery.of(context).size.width * .2,
                            ),
                      (selectedEnemies.length >
                              2) // If selected enemies at 0 is not null show the picture
                          ? GestureDetector(
                              onTap: () => {removeEnemy(selectedEnemies[2])},
                              child: Container(
                                // padding: EdgeInsets.only(left: 20),
                                // margin: EdgeInsets.only(right: 20),
                                height: MediaQuery.of(context).size.width * .2,
                                width: MediaQuery.of(context).size.width * .2,
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        alignment: FractionalOffset.center,
                                        image: NetworkImage(this
                                                .parsedEnemyData[0]
                                            [selectedEnemies[2]]['picture']),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Image.network(
                              '',
                              height: MediaQuery.of(context).size.width * .2,
                              width: MediaQuery.of(context).size.width * .2,
                            ),
                      (selectedEnemies.length >
                              3) // If selected enemies at 0 is not null show the picture
                          ? GestureDetector(
                              onTap: () => {removeEnemy(selectedEnemies[3])},
                              child: Container(
                                // padding: EdgeInsets.only(left: 20),
                                // margin: EdgeInsets.only(right: 20),
                                height: MediaQuery.of(context).size.width * .2,
                                width: MediaQuery.of(context).size.width * .2,
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        alignment: FractionalOffset.center,
                                        image: NetworkImage(this
                                                .parsedEnemyData[0]
                                            [selectedEnemies[3]]['picture']),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Image.network(
                              '',
                              height: MediaQuery.of(context).size.width * .2,
                              width: MediaQuery.of(context).size.width * .2,
                            ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      (selectedEnemies.length >
                              4) // If selected enemies at 0 is not null show the picture
                          ? GestureDetector(
                              onTap: () => {removeEnemy(selectedEnemies[4])},
                              child: Container(
                                // padding: EdgeInsets.only(left: 20),
                                // margin: EdgeInsets.only(right: 20),
                                height: MediaQuery.of(context).size.width * .2,
                                width: MediaQuery.of(context).size.width * .2,
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        alignment: FractionalOffset.center,
                                        image: NetworkImage(this
                                                .parsedEnemyData[0]
                                            [selectedEnemies[4]]['picture']),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Image.network(
                              '',
                              height: MediaQuery.of(context).size.width * .2,
                              width: MediaQuery.of(context).size.width * .2,
                            ),
                      (selectedEnemies.length >
                              5) // If selected enemies at 0 is not null show the picture
                          ? GestureDetector(
                              onTap: () => {removeEnemy(selectedEnemies[5])},
                              child: Container(
                                // padding: EdgeInsets.only(left: 20),
                                // margin: EdgeInsets.only(right: 20),
                                height: MediaQuery.of(context).size.width * .2,
                                width: MediaQuery.of(context).size.width * .2,
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        alignment: FractionalOffset.center,
                                        image: NetworkImage(this
                                                .parsedEnemyData[0]
                                            [selectedEnemies[5]]['picture']),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Image.network(
                              '',
                              height: MediaQuery.of(context).size.width * .2,
                              width: MediaQuery.of(context).size.width * .2,
                            ),
                      (selectedEnemies.length >
                              6) // If selected enemies at 0 is not null show the picture
                          ? GestureDetector(
                              onTap: () => {removeEnemy(selectedEnemies[6])},
                              child: Container(
                                // padding: EdgeInsets.only(left: 20),
                                // margin: EdgeInsets.only(right: 20),
                                height: MediaQuery.of(context).size.width * .2,
                                width: MediaQuery.of(context).size.width * .2,
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        alignment: FractionalOffset.center,
                                        image: NetworkImage(this
                                                .parsedEnemyData[0]
                                            [selectedEnemies[6]]['picture']),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Image.network(
                              '',
                              height: MediaQuery.of(context).size.width * .2,
                              width: MediaQuery.of(context).size.width * .2,
                            ),
                      (selectedEnemies.length >
                              7) // If selected enemies at 0 is not null show the picture
                          ? GestureDetector(
                              onTap: () => {removeEnemy(selectedEnemies[7])},
                              child: Container(
                                // padding: EdgeInsets.only(left: 20),
                                // margin: EdgeInsets.only(right: 20),
                                height: MediaQuery.of(context).size.width * .2,
                                width: MediaQuery.of(context).size.width * .2,
                                child: Center(
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fitWidth,
                                        alignment: FractionalOffset.center,
                                        image: NetworkImage(this
                                                .parsedEnemyData[0]
                                            [selectedEnemies[7]]['picture']),
                                      )),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Image.network(
                              '',
                              height: MediaQuery.of(context).size.width * .2,
                              width: MediaQuery.of(context).size.width * .2,
                            ),
                    ],
                  ),
                ],
              )),
            ),
            Expanded(
              flex: 3,
              child: Scaffold(
                backgroundColor: Colors.white,
                body: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        onChanged: (input) => {},
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Search',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // child: FutureBuilder(
                        //     future: getNamesFromJson(),
                        //     builder: (context, snapshot) {
                        //       if (snapshot.data != null) {
                        //         print('SNAPSHOT');
                        //         print(snapshot.data);
                        //         print(snapshot.data[1]['smallMonstersList']
                        //             [snapshot.data[0][0]]['picture']);
                        //         return ListView.builder(
                        //           itemBuilder: (_, index) => Center(
                        //             child: FadeInImage(
                        //               width: 200,
                        //               height: 200,
                        //               placeholder: AssetImage(
                        //                   'assets/icons/gh_poison.png'),
                        //               image: NetworkImage(
                        //                   'https://cdn.shopify.com/s/files/1/0281/0173/8555/files/City-Guard-214x300.jpg'),
                        //               fit: BoxFit.cover,
                        //             ),
                        //           ),
                        //         );
                        //       } else {
                        //         return CircularProgressIndicator(); // Empty container because parsing the names should never take long
                        //       }
                        //     }),

                        margin: EdgeInsets.only(left: 20),

                        child: FutureBuilder(
                            future: enemyData,
                            builder: (BuildContext context,
                                AsyncSnapshot<String> snapshot) {
                              var jsonEnemyData = jsonDecode(snapshot.data);
                              this.parsedEnemyData =
                                  jsonEnemyData['smallMonstersList'];
                              var enemyNames = [];

                              this.parsedEnemyData.forEach((element) {
                                (element as Map<String, dynamic>)
                                    .forEach((key, value) {
                                  enemyNames.add(key);
                                });
                              });

                              if (snapshot.hasData) {
                                return ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: snapshot == null
                                        ? 0
                                        : enemyNames.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      // right now small enemis list is a list with one big json object that i can hopefully parse into smaller ones without having to go and put brackets around each enemy type
                                      // looks like it worked

                                      return GestureDetector(
                                        onTap: () => {
                                          selectEnemy(enemyNames[index]),
                                        },
                                        child: Container(
                                          padding: EdgeInsets.only(left: 20),
                                          margin: EdgeInsets.only(right: 20),
                                          height: 200,
                                          width: 200,
                                          child: Center(
                                            child: AspectRatio(
                                              aspectRatio: 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    fit: BoxFit.fitWidth,
                                                    alignment:
                                                        FractionalOffset.center,
                                                    image: NetworkImage(
                                                        '${this.parsedEnemyData[0][enemyNames[index]]['picture']}'),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                              }
                              if (snapshot.hasError) {
                                return Icon(
                                  Icons.error_outline,
                                  color: Colors.red,
                                  size: 60,
                                );
                              } else {
                                return SizedBox(
                                  child: CircularProgressIndicator(),
                                  width: 60,
                                  height: 60,
                                );
                              }
                            }),
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
                      newJson = buildEnemyJson(),
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return EnemyPicker(
                              widget.scenarioLevel, selectedEnemies, newJson);
                        }),
                      )
                    },
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
