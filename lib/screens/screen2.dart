import 'package:ten_screens_login/imports.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  double loginW = 70;
  double signW = 0;
  String current = "LOGIN";
  void login(String mail, String password) {
    // do every thimg here to impliment the login
  }
  void signup(String mail, String password, String username) {
    // do every thimg here to impliment the login
  }
  void facebook() {
    // do every thimg here to impliment the login
  }
  void google() {
    // do every thimg here to impliment the login
  }
  void twitter() {
    // do every thimg here to impliment the login
  }
  void termsandconditions() {
    // do every thimg here to impliment the login
  }
  TextEditingController _mail;
  TextEditingController _pass;
  TextEditingController _username;
  @override
  void initState() {
    _mail = new TextEditingController();
    _pass = new TextEditingController();
    _username = new TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _mail.dispose();
    _pass.dispose();
    _username.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [
                    HexColor("#8F94FB"),
                    HexColor("#4E54C8"),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .25,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SvgPicture.asset(
                        "assets/logo2.svg",
                        width: 80,
                        height: 115.12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18.0, 18, 18, 0),
                    child: Stack(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            loginW = 70;
                                            signW = 0;
                                            current = "LOGIN";
                                          });
                                        },
                                        child: Text(
                                          "LOGIN",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                      AnimatedContainer(
                                        duration: Duration(
                                          milliseconds: 300,
                                        ),
                                        width: loginW,
                                        height: 3,
                                        decoration: BoxDecoration(
                                          color: HexColor("#4E54C8"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            loginW = 0;
                                            signW = 70;
                                            current = "SIGNUP";
                                          });
                                        },
                                        child: Text(
                                          "SIGNUP",
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                      AnimatedContainer(
                                        duration: Duration(
                                          milliseconds: 300,
                                        ),
                                        width: signW,
                                        height: 3,
                                        decoration: BoxDecoration(
                                          color: HexColor("#4E54C8"),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    current != "LOGIN"
                                        ? Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                              30,
                                              15,
                                              30,
                                              0,
                                            ),
                                            child: TextField(
                                              controller: _username,
                                              cursorColor: Color(0xff4E54C8),
                                              decoration: InputDecoration(
                                                hintText: "Username",
                                                prefixIcon: Icon(
                                                  Icons.perm_identity,
                                                  color: Color(0xff4E54C8),
                                                ),
                                                focusColor: Color(0xff4E54C8),
                                                fillColor: Colors.white,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xff4E54C8),
                                                    width: 1.0,
                                                  ),
                                                ),
                                                border: OutlineInputBorder(),
                                              ),
                                            ),
                                          )
                                        : Container(
                                            height: 20,
                                          ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        30,
                                        15,
                                        30,
                                        0,
                                      ),
                                      child: TextField(
                                        controller: _mail,
                                        cursorColor: Color(0xff4E54C8),
                                        decoration: InputDecoration(
                                          hintText: "Email Address",
                                          prefixIcon: Icon(
                                            Icons.mail_outline,
                                            color: Color(0xff4E54C8),
                                          ),
                                          focusColor: Color(0xff4E54C8),
                                          fillColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xff4E54C8),
                                              width: 1.0,
                                            ),
                                          ),
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        30,
                                        15,
                                        30,
                                        0,
                                      ),
                                      child: TextField(
                                        controller: _pass,
                                        cursorColor: Color(0xff4E54C8),
                                        decoration: InputDecoration(
                                          hintText: "Password",
                                          prefixIcon: Icon(
                                            Icons.lock_outline,
                                            color: Color(0xff4E54C8),
                                          ),
                                          focusColor: Color(0xff4E54C8),
                                          fillColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xff4E54C8),
                                              width: 1.0,
                                            ),
                                          ),
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                    ),
                                    Center(
                                      child: Container(
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "By pressing 'submit' you agree",
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                termsandconditions();
                                              },
                                              child:
                                                  Text("Terms and Conditions"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * .5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: const Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x338f94fb),
                                offset: Offset(0, 3),
                                blurRadius: 20,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height:
                                  (MediaQuery.of(context).size.height * .5) -
                                      40,
                              width: double.infinity,
                            ),
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                color: const Color(0xffffffff),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x338f94fb),
                                    offset: Offset(0, 3),
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Container(
                                  child: IconButton(
                                    onPressed: () {
                                      if (current == "LOGIN") {
                                        if (_mail.text == "" ||
                                            _pass.text == "") {
                                          Get.snackbar(
                                            "Fill it!",
                                            "Every Feld needs to be filled",
                                          );
                                        } else {
                                          login(_mail.text, _pass.text);
                                        }
                                      } else {
                                        if (_mail.text == "" ||
                                            _pass.text == "" ||
                                            _username.text == "") {
                                          Get.snackbar(
                                            "Fill it!",
                                            "Every Feld needs to be filled",
                                          );
                                        } else {
                                          signup(_mail.text, _pass.text,
                                              _username.text);
                                        }
                                      }
                                    },
                                    icon: Icon(Icons.arrow_forward,
                                        color: Colors.white),
                                  ),
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0),
                                    ),
                                    // color: Colors.white,
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        HexColor("#8F94FB"),
                                        HexColor("#4E54C8"),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              google();
                            },
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: SvgPicture.asset("assets/google2.svg"),
                              ),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                color: const Color(0xffffffff),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x338f94fb),
                                    offset: Offset(0, 13),
                                    blurRadius: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              facebook();
                            },
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: SvgPicture.asset("assets/facebook2.svg"),
                              ),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                color: const Color(0xffffffff),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x338f94fb),
                                    offset: Offset(0, 13),
                                    blurRadius: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              twitter();
                            },
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: SvgPicture.asset("assets/twitter2.svg"),
                              ),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                color: const Color(0xffffffff),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x338f94fb),
                                    offset: Offset(0, 13),
                                    blurRadius: 30,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Container(
//     width: 79.3,
//     height: 79.3,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
//       color: const Color(0xffffffff),
//       boxShadow: [
//         BoxShadow(
//           color: const Color(0x338f94fb),
//           offset: Offset(0, 3),
//           blurRadius: 20,
//         ),
//       ],
//     ),
//   );
