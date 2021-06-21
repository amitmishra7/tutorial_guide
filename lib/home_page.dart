import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TutorialCoachMark tutorialCoachMark;
  List<TargetFocus> targets = [];

  //declare all keys
  GlobalKey key1 = GlobalKey();
  GlobalKey key2 = GlobalKey();
  GlobalKey key3 = GlobalKey();
  GlobalKey key4 = GlobalKey();
  GlobalKey key5 = GlobalKey();
  GlobalKey key6 = GlobalKey();

  @override
  void initState() {
    initTargets();
    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial Guide'),
        centerTitle: true,
        key: key1,
        leading: Icon(
          Icons.menu,
          key: key2,
        ),
        actions: [
          InkWell(
            onTap: showTutorial,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.refresh),
              key: key3,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              key: key4,
              child: Text(
                '1',
                style: TextStyle(fontSize: 40),
              ),
            ),
            Container(
              key: key5,
              child: Text(
                '2',
                style: TextStyle(fontSize: 40),
              ),
            ),
            Container(
              key: key6,
              child: Text(
                '3',
                style: TextStyle(fontSize: 40),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// create the coach marks here
  void initTargets() {
    targets.add(TargetFocus(
      identify: 'Target 1',
      keyTarget: key1,
      contents: [
        TargetContent(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Action Bar",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "This is the action bar of out application. This shows the title of screen and action buttons",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));

    targets.add(
      TargetFocus(
        identify: "Target 2",
        keyTarget: key2,
        color: Colors.pink,
        contents: [
          TargetContent(
            align: ContentAlign.right,
            child: Container(
              padding: EdgeInsets.only(top:20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Side Menu",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Side menu—also known as a Hamburger Menu,\nis a common place to put a design's secondary content, such as navigation links, shopping cart preview, information about the logged-in user, and other optional functions.",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
        shape: ShapeLightFocus.Circle,
        radius: 5,
      ),
    );

    targets.add(
      TargetFocus(
        identify: "Target 3",
        keyTarget: key3,
        color: Colors.deepPurpleAccent,
        contents: [
          TargetContent(
            align: ContentAlign.left,
            child: Container(
              padding: EdgeInsets.only(top:20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Actions Menu",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Contains menu items which become visible when the user clicks the “menu” button. For now, if clicked re runs the whole demo from scratch.",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
        shape: ShapeLightFocus.Circle,
        radius: 5,
      ),
    );

    targets.add(
      TargetFocus(
        identify: "Target 4",
        keyTarget: key4,
        color: Colors.purpleAccent,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Rectangular Coach Mark",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "This is a rectangular coach mark target container. You can have your own widgets over here.",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
        shape: ShapeLightFocus.RRect,
        radius: 5,
      ),
    );

    targets.add(TargetFocus(
      identify: "Target 5",
      keyTarget: key5,
      contents: [
        TargetContent(
            align: ContentAlign.top,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      "Circular Coach Mark - Top",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  Text(
                    "This is a circular coach mark target container with top alignment to the child.",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            )),
        TargetContent(
            align: ContentAlign.bottom,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    "Circular Coach Mark - Bottom",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
                Container(
                  child: Text(
                    "This is a circular coach mark target container with bottom alignment to the child.",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ))
      ],
      color: Colors.deepPurple,
      shape: ShapeLightFocus.Circle,
    ));

    targets.add(TargetFocus(
      identify: "Target 6",
      keyTarget: key6,
      color: Colors.purple,
      contents: [
        TargetContent(
            align: ContentAlign.top,
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      "assets/intro.png",
                      fit: BoxFit.contain,
                      height: 120,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      "Custom Components",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  Text(
                    "One can add as many coach marks required and it provides easy steps to design custom components. For demo, I have added an Image over here.",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ))
      ],
      shape: ShapeLightFocus.RRect,
    ));
  }

  void _afterLayout(_) {
    Future.delayed(Duration(seconds: 1));
    showTutorial();
  }

  void showTutorial() {
    tutorialCoachMark = TutorialCoachMark(context,
        targets: targets,
        colorShadow: Colors.blue,
        textSkip: "SKIP",
        opacityShadow: 0.8, onSkip: () {
      Fluttertoast.showToast(
          msg: 'You have Skipped the Tutorial guide for this Application',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.blue,
          textColor: Colors.white);
    }, onFinish: () {
      Fluttertoast.showToast(
          msg: 'You have Finished the Tutorial guide for this Application',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.blue,
          textColor: Colors.white);
    })
      ..show();
  }
}
