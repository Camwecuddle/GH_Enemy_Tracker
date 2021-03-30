import 'package:flutter/material.dart';
import 'package:gh_enemy_tracker/scenariolevel.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 30, top: 50),
              // color: Colors.red,
              alignment: Alignment.topLeft,
              child: Text(
                'Gloomhaven\nEnemy\nTracker',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          Expanded(
            child: Container(
              // color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    child: Text(
                      'New',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ScenarioLevel();
                        }),
                      )
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Join',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ScenarioLevel();
                        }),
                      )
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
