import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  var _currentStep = 0;
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(.2),
          title: Text("Password Reset", style: TextStyle(color: Colors.white)),
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
                //padding goes here
                child: Container(
                  margin:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(.2)),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 30.0),
                      Image.asset('images/fas.png', width: 300),
                      SizedBox(height: 20.0),
                      Container(
                        child: Stepper(
                          controlsBuilder: (BuildContext context,
                              {VoidCallback onStepCancel,
                              VoidCallback onStepContinue}) {
                            return Row(
                              children: <Widget>[
                                RaisedButton(
                                  padding: const EdgeInsets.all(5.0),
                                  onPressed: onStepCancel,
                                  child: Text('Zurück',
                                      style: TextStyle(color: Colors.black)),
                                ),
                                SizedBox(width: 20),
                                RaisedButton(
                                  color: Theme.of(context).accentColor,
                                  onPressed: onStepContinue,
                                  child: Text('Weiter',
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ],
                            );
                          },
                          type: StepperType.vertical,
                          currentStep: _currentStep,
                          onStepContinue: () async {
                            switch (_currentStep) {
                              case 0:
                                // var response = await auth.recover(_email);
                                if (true) {
                                  setState(() {
                                    _currentStep = 1;
                                  });
                                } else {
                                  Flushbar(
                                          flushbarPosition:
                                              FlushbarPosition.TOP,
                                          titleText: Text(
                                            "Benutzer nicht gefunden",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          messageText: Text(
                                            "Benutzer konnte nicht gefunden werden.",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          icon: Icon(
                                            Icons.error,
                                            size: 28.0,
                                            color: Colors.white,
                                          ),
                                          duration: Duration(seconds: 3),
                                          backgroundColor:
                                              const Color(0xFFDD0060))
                                      .show(context);
                                }
                                break;
                              case 1:
                                if (true) {
                                  setState(() {
                                    _currentStep = 2;
                                  });
                                }
                                break;
                              case 2:
                                // var response = await auth.newPassword(_token, _password);
                                if (true) {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => Login()),
                                  // );
                                } else {
                                  Flushbar(
                                          flushbarPosition:
                                              FlushbarPosition.TOP,
                                          titleText: Text(
                                            "Aktivierungscode nicht gültig!",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          messageText: Text(
                                            "Der von Ihnen eingegebene Aktivierungscode ist nicht gültig",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          icon: Icon(
                                            Icons.error,
                                            size: 28.0,
                                            color: Colors.white,
                                          ),
                                          duration: Duration(seconds: 3),
                                          backgroundColor:
                                              const Color(0xFFDD0060))
                                      .show(context);
                                }
                                break;
                            }

                            print(_currentStep);
                          },
                          onStepCancel: () {
                            setState(() {
                              print(_currentStep);
                              _currentStep = _currentStep - 1;
                            });
                          },
                          steps: <Step>[
                            new Step(
                              title: Text('Benutzer / Email-Adresse'),
                              content: Column(children: <Widget>[
                                SizedBox(height: 20),
                                TextField(
                                  // controller: _emailFilter,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Email Adresse'),
                                ),
                                SizedBox(height: 20),
                              ]),
                            ),
                            new Step(
                              title: Text('Verifizieren'),
                              content: Column(children: <Widget>[
                                SizedBox(height: 20),
                                TextField(
                                  // controller: _tokenFilter,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Validierungscode'),
                                ),
                                SizedBox(height: 20),
                              ]),
                            ),
                            new Step(
                              title: Text('Passwort ändern'),
                              content: Column(children: <Widget>[
                                SizedBox(height: 20),
                                TextField(
                                  // controller: _passwordFilter,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Neues Passwort'),
                                ),
                                SizedBox(height: 10),
                                TextField(
                                  // controller: _passwordFilter,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Passwort bestätigen'),
                                ),
                                SizedBox(height: 20),
                              ]),
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(height: 50.0),
                    ],
                  ),
                ),
              ),
            )));
  }
}
