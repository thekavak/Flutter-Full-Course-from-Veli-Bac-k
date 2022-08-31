import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key}) : super(key: key);

  final String name = 'veli';
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton(child: Text('aaa'), onPressed: () {}),
            TextButton(child: Text('aaa'), onPressed: () {}),
            Text(
              "Welcome $name ${name.length}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              //textScaleFactor: 1.2,
              style: TextStyle(
                  wordSpacing: 2,
                  letterSpacing: 2,
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline),
            ),
            Text(
              "${keys.welcome} $name",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              //textScaleFactor: 1.2,
              style: ProjectStyles.welcomeStyle,
            )
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
      wordSpacing: 2,
      letterSpacing: 2,
      color: Colors.red,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.underline);
}

class ProjectColors {
  static Color welcomeColors = Colors.amber;
}

class ProjectKeys {
  final String welcome = 'Welcome';
}
