import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  // LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(.2),
          // title: Text("Login", style: TextStyle(color: Colors.white)),
        ),
        body: Theme(
            data: Theme.of(context).copyWith(
              brightness: Brightness.dark,
              primaryColor: Colors.white,
            ),
            child: DefaultTextStyle(
              style: TextStyle(
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Container(
                  margin:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(.2)),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 50.0),
                      Image.asset('images/fas.png', width: 300),
                      SizedBox(height: 50.0),
                      Text(
                        "Welcome",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: TextField(
                          onChanged: (value) {
                            //on change work goes here
                          },
                          // controller: _controllerEmail,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              // errorText: userLogin.getBlankEmailMessage(),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 2.0),
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Enter email adress',
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green)),
                              // filled: true,
                              hintStyle: TextStyle(color: Colors.white),
                              fillColor: Colors.white),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: TextField(
                          onChanged: (value) {
                            //on change work goes here
                          },
                          // controller: _controllerEmail,
                          style: TextStyle(color: Colors.white),

                          decoration: InputDecoration(
                              // errorText: userLogin.getBlankEmailMessage(),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 2.0),
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Enter Password',
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green)),
                              hintStyle: TextStyle(color: Colors.white),
                              fillColor: Colors.white),
                          obscureText: true,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ButtonTheme(
                        minWidth: 300.0,
                        height: 50.0,
                        child: RaisedButton(
                            color: Color(0xFF3ADE00), //3ADE00
                            padding: const EdgeInsets.all(10.0),
                            onPressed: () {},
                            child: Text('Login',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ))),
                      ),
                      SizedBox(height: 50.0),
                      InkWell(
                          child: Text(
                            'Forget password! click here',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                fontSize: 15.0),
                          ),
                          onTap: () => {}),
                      SizedBox(height: 100.0),
                    ],
                  ),
                ),
              ),
            )));
  }
}
