import 'package:flutter/material.dart';

class SignUpEmail extends StatefulWidget {
  @override
  _SignUpEmailState createState() => _SignUpEmailState();
}

class _SignUpEmailState extends State<SignUpEmail> {
  final _formKey = GlobalKey<FormState>();
  bool visible;

  @override
  void initState() {
    super.initState();
    visible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            }),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Material(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0, left: 25.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 28.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
                child: Form(
                  key: _formKey,
                  child: Column(children: <Widget>[
                    TextFormField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        hoverColor: Colors.grey,
                        focusColor: Colors.grey,
                        labelText: "Full Name",
                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0),
                        hintText: "uEnter Name",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w300,
                            fontSize: 18.0),
                        contentPadding: EdgeInsets.all(10.0),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: TextFormField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          hoverColor: Colors.grey,
                          focusColor: Colors.grey,
                          labelText: "Email",
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 20.0),
                          hintText: "uthman@uthman.com",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w300,
                              fontSize: 18.0),
                          contentPadding: EdgeInsets.all(10.0),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: TextFormField(
                        obscureText: visible == false ? true : false,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          suffixIcon: visible == false
                              ? IconButton(
                                  icon: Icon(
                                    Icons.visibility_off,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      visible = true;
                                    });
                                  })
                              : IconButton(
                                  icon: Icon(
                                    Icons.visibility,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      visible = false;
                                    });
                                  }),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          hoverColor: Colors.grey,
                          focusColor: Colors.grey,
                          labelText: "Password",
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 20.0),
                          hintText: "Enter Password",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w300,
                              fontSize: 18.0),
                          contentPadding: EdgeInsets.all(10.0),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: TextFormField(
                        obscureText: visible == false ? true : false,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          suffixIcon: visible == false
                              ? IconButton(
                                  icon: Icon(
                                    Icons.visibility_off,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      visible = true;
                                    });
                                  })
                              : IconButton(
                                  icon: Icon(
                                    Icons.visibility,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      visible = false;
                                    });
                                  }),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          hoverColor: Colors.grey,
                          focusColor: Colors.grey,
                          labelText: "Confirm Password",
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 20.0),
                          hintText: "Re-enter Password",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w300,
                              fontSize: 18.0),
                          contentPadding: EdgeInsets.all(10.0),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Material(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(25.0),
                            child: InkWell(
                              splashColor: Colors.black26,
                              onTap: () {},
                              child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text(
                                  "Sign Up",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Already have an account?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Material(
                            color: Colors.white,
                            child: InkWell(
                              splashColor: Colors.blue[100],
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                " Log In",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
