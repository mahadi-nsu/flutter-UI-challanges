import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  @override
  _UpdateState createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  @override
  var _currentStep = 0;
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(.2),
          title: Text("User Details", style: TextStyle(color: Colors.white)),
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
                      SizedBox(height: 30.0),
                      //button start for level s1
                      Container(
                        height: 270,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: ListView(
                          // scrollDirection: null,
                          physics: FixedExtentScrollPhysics(),
                          padding: EdgeInsets.only(left: 5.0, right: 20.0),
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, left: 5.0, right: 5.0),
                              child: Text("Danger level S1 (Backflow Risk)",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Container(
                                  constraints:
                                      BoxConstraints.expand(height: 200.0),
                                  decoration: BoxDecoration(
                                      // color: Colors.blueGrey,
                                      ),
                                  child: ListView(
                                      physics: FixedExtentScrollPhysics(),
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                // left: 10.0,
                                                // right: 10.0,
                                                top: 10.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Row(children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 40.0,
                                                            right: 50.0),
                                                    child: Transform.scale(
                                                      scale: 1.5,
                                                      child: Switch(
                                                        value: true,
                                                        onChanged:
                                                            (bool newVal) {},
                                                        activeTrackColor: Colors
                                                            .lightGreenAccent,
                                                        activeColor:
                                                            Colors.green,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    " Email",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  )
                                                ]),
                                              ],
                                            )),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                // left: 10.0,
                                                // right: 10.0,
                                                top: 10.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Row(children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 40.0,
                                                            right: 50.0),
                                                    child: Transform.scale(
                                                      scale: 1.5,
                                                      child: Switch(
                                                        value: true,
                                                        onChanged:
                                                            (bool newVal) {},
                                                        activeTrackColor: Colors
                                                            .lightGreenAccent,
                                                        activeColor:
                                                            Colors.green,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    " SmS",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  )
                                                ]),
                                              ],
                                            )),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                // left: 10.0,
                                                // right: 10.0,
                                                top: 10.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Row(children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 40.0,
                                                            right: 50.0),
                                                    child: Transform.scale(
                                                      scale: 1.5,
                                                      child: Switch(
                                                        value: false,
                                                        onChanged:
                                                            (bool newVal) {},
                                                        activeTrackColor: Colors
                                                            .lightGreenAccent,
                                                        activeColor:
                                                            Colors.green,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    " Call",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  )
                                                ]),
                                              ],
                                            )),
                                      ]),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Container(
                        height: 270,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: ListView(
                          // scrollDirection: null,
                          physics: FixedExtentScrollPhysics(),
                          padding: EdgeInsets.only(left: 5.0, right: 20.0),
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, left: 5.0, right: 5.0),
                              child: Text("Danger level S1 (Backflow Risk)",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Container(
                                  constraints:
                                      BoxConstraints.expand(height: 200.0),
                                  decoration: BoxDecoration(
                                      // color: Colors.blueGrey,
                                      ),
                                  child: ListView(
                                      physics: FixedExtentScrollPhysics(),
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                // left: 10.0,
                                                // right: 10.0,
                                                top: 10.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Row(children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 40.0,
                                                            right: 50.0),
                                                    child: Transform.scale(
                                                      scale: 1.5,
                                                      child: Switch(
                                                        value: true,
                                                        onChanged:
                                                            (bool newVal) {},
                                                        activeTrackColor: Colors
                                                            .lightGreenAccent,
                                                        activeColor:
                                                            Colors.green,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    " Email",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  )
                                                ]),
                                              ],
                                            )),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                // left: 10.0,
                                                // right: 10.0,
                                                top: 10.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Row(children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 40.0,
                                                            right: 50.0),
                                                    child: Transform.scale(
                                                      scale: 1.5,
                                                      child: Switch(
                                                        value: true,
                                                        onChanged:
                                                            (bool newVal) {},
                                                        activeTrackColor: Colors
                                                            .lightGreenAccent,
                                                        activeColor:
                                                            Colors.green,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    " SmS",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  )
                                                ]),
                                              ],
                                            )),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                // left: 10.0,
                                                // right: 10.0,
                                                top: 10.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Row(children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 40.0,
                                                            right: 50.0),
                                                    child: Transform.scale(
                                                      scale: 1.5,
                                                      child: Switch(
                                                        value: false,
                                                        onChanged:
                                                            (bool newVal) {},
                                                        activeTrackColor: Colors
                                                            .lightGreenAccent,
                                                        activeColor:
                                                            Colors.green,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    " Call",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  )
                                                ]),
                                              ],
                                            )),
                                      ]),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Container(
                        height: 270,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: ListView(
                          // scrollDirection: null,
                          physics: FixedExtentScrollPhysics(),
                          padding: EdgeInsets.only(left: 5.0, right: 20.0),
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, left: 5.0, right: 5.0),
                              child: Text("Danger level S1 (Backflow Risk)",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15.0),
                              child: Container(
                                constraints:
                                    BoxConstraints.expand(height: 200.0),
                                decoration: BoxDecoration(
                                    // color: Colors.blueGrey,
                                    ),
                                child: ListView(
                                    physics: FixedExtentScrollPhysics(),
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              // left: 10.0,
                                              // right: 10.0,
                                              top: 10.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 40.0,
                                                          right: 50.0),
                                                  child: Transform.scale(
                                                    scale: 1.5,
                                                    child: Switch(
                                                      value: true,
                                                      onChanged:
                                                          (bool newVal) {},
                                                      activeTrackColor: Colors
                                                          .lightGreenAccent,
                                                      activeColor: Colors.green,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  " Email",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                )
                                              ]),
                                            ],
                                          )),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              // left: 10.0,
                                              // right: 10.0,
                                              top: 10.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 40.0,
                                                          right: 50.0),
                                                  child: Transform.scale(
                                                    scale: 1.5,
                                                    child: Switch(
                                                      value: true,
                                                      onChanged:
                                                          (bool newVal) {},
                                                      activeTrackColor: Colors
                                                          .lightGreenAccent,
                                                      activeColor: Colors.green,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  " SmS",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                )
                                              ]),
                                            ],
                                          )),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              // left: 10.0,
                                              // right: 10.0,
                                              top: 10.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Row(children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 40.0,
                                                          right: 50.0),
                                                  child: Transform.scale(
                                                    scale: 1.5,
                                                    child: Switch(
                                                      value: false,
                                                      onChanged:
                                                          (bool newVal) {},
                                                      activeTrackColor: Colors
                                                          .lightGreenAccent,
                                                      activeColor: Colors.green,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  " Call",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                )
                                              ]),
                                            ],
                                          )),
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30.0),
                    ],
                  ),
                ),
              ),
            )));
  }
}
