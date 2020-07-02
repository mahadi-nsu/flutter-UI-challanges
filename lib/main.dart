import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextStyle whiteText = TextStyle(
    color: Colors.white,
  );

  final TextStyle greyTExt = TextStyle(
    color: Colors.grey.shade400,
  );
  // final bottomColorDark = const Color(0xff495057);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Theme(
        data: Theme.of(context).copyWith(
          brightness: Brightness.dark,
          primaryColor: Colors.purple,
        ),
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(32.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(.1)),
              child: Column(
                // decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     color: Colors.white.withOpacity(.1)),
                children: <Widget>[
                  const SizedBox(height: 20.0),
                  Text(
                    "Settings",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  const SizedBox(height: 20.0),
                  ListTile(
                    leading: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ),
                    title: Text("User Settings",
                        style: TextStyle(color: Colors.white)),
                    trailing:
                        Icon(Icons.keyboard_arrow_right, color: Colors.white),
                    onTap: () {
                      //open change password
                    },
                  ),
                  _buildDivider(),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    title: Text("Change Password",
                        style: TextStyle(color: Colors.white)),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    ),
                    onTap: () {
                      //open change language
                    },
                  ),
                  _buildDivider(),
                  ListTile(
                    leading: Icon(
                      Icons.lightbulb_outline,
                      color: Colors.white,
                    ),
                    title: Text("Switch Theme",
                        style: TextStyle(color: Colors.white)),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    ),
                    onTap: () {
                      //open change location
                    },
                  ),
                  _buildDivider(),
                  ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text("About FAS",
                        style: TextStyle(color: Colors.white)),
                    trailing:
                        Icon(Icons.keyboard_arrow_right, color: Colors.white),
                    onTap: () {
                      //open change location
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Container _buildDivider() {
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 8.0,
    ),
    width: double.infinity,
    height: 1.0,
    color: Colors.grey.shade400,
  );
}
