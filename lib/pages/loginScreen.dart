import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Colors.white,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/logo2.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Welcome to Basic Tutor Academy",
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
                  child: Column(children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue[900], width: 1.0),
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "CONNECT WITH GOOGLE",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Or",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Material(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25.0),
                        child: InkWell(
                          splashColor: Colors.black26,
                          onTap: () {
                            Navigator.pushNamed(context, '/second');
                          },
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              "LOGIN WITH EMAIL",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
