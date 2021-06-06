import 'package:ten_screens_login/imports.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> with TickerProviderStateMixin {
  // hey i know this code might seem complicated
  // but i have help for you see these functions
  // here you an impliment login regiter or more
  // quite easily
  void Login(String mail, String password) {
    // do what ever you want to do here
  }
  void Signup(String mail, String password, String passwordConfirm) {
    if (password == passwordConfirm) {
      // do what ever you want to do here
      // [password] is your password and [mail] is mail. be happy

    } else {
      Get.snackbar("Wrong Password", "Passwords are not Same!");
    }
  }

  void forgotPassword() {
    // add here
  }

  /// well a task for you impliment those facebook twitter and mail button
  PageController _controller;
  TextEditingController _lmail;
  TextEditingController _lpass;
  TextEditingController _rmail;
  TextEditingController _rpass;
  TextEditingController _rpass2;

  @override
  void initState() {
    _controller = PageController();
    _lmail = TextEditingController();
    _lpass = TextEditingController();
    _rmail = TextEditingController();
    _rpass = TextEditingController();
    _rpass2 = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _lmail.dispose();
    _lpass.dispose();
    _rmail.dispose();
    _rpass2.dispose();
    _rpass.dispose();
    super.dispose();
  }

  int currentIndex = 0;
  double loginW = Get.width * .5;
  double signW = 0;
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          children: [
            top(),
            center(),
            Divider(
              thickness: 1,
              color: Color(0xff4E54C8),
              height: 0,
              indent: 35,
              endIndent: 35,
            ),
            bottom(),
          ],
        ),
      ),
    );
  }

  Widget top() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: const Offset(
              3.0,
              2.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
      ),
      width: Get.width,
      height: Get.height * .3,
      child: Column(
        children: [
          Expanded(
            child: SvgPicture.asset("assets/Logo1.svg"),
          ),
          Container(
            height: 50,
            width: Get.width,
            child: Row(
              children: [
                Container(
                  width: Get.width * .5,
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          width: double.infinity,
                          height: 40,
                          child: MaterialButton(
                            onPressed: () {
                              _controller.animateToPage(
                                0,
                                duration: Duration(milliseconds: 600),
                                curve: Curves.ease,
                              );
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontWeight: currentIndex == 0
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                fontSize: 26,
                                color: Color(0xFF2554C0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: AnimatedContainer(
                            duration: Duration(
                              milliseconds: 300,
                            ),
                            width: loginW,
                            height: 5,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xff1D55C5), Color(0xffE93354)],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: Get.width * .5,
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          width: double.infinity,
                          height: 40,
                          child: MaterialButton(
                            onPressed: () {
                              _controller.animateToPage(
                                1,
                                duration: Duration(milliseconds: 400),
                                curve: Curves.ease,
                              );
                            },
                            child: Text(
                              "Signup",
                              style: TextStyle(
                                fontWeight: currentIndex == 1
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                fontSize: 26,
                                color: Color(0xFF2554C0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: AnimatedContainer(
                            duration: Duration(
                              milliseconds: 300,
                            ),
                            width: signW,
                            height: 5,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xff1D55C5), Color(0xffE93354)],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget center() {
    return Container(
      height: Get.height * .5,
      child: PageView(
        //dont do anything till children until and unless you are sure
        controller: _controller,
        onPageChanged: (pageIndex) {
          setState(() {
            currentIndex = pageIndex;
            if (currentIndex == 0) {
              loginW = Get.width * .5;
              signW = 0;
            } else {
              loginW = 0;
              signW = Get.width * .5;
            }
            // loginW = 0;
          });
        },
        // customize from here
        children: [
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Container(
              child: Column(
                children: [
                  /// Usrname Hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: HexColor("#1F54C315"),
                            offset: const Offset(
                              0,
                              6.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: _lmail,
                        cursorColor: Colors.grey[350],
                        decoration: InputDecoration(
                          hintText: "Email Address",
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey[350],
                              width: 1.0,
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Container(height: 10),

                  /// Password hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                          color: HexColor("#1F54C315"),
                          offset: const Offset(
                            0,
                            6.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                      ]),
                      child: TextField(
                        controller: _lpass,
                        cursorColor: Colors.grey[350],
                        obscureText: show,
                        decoration: InputDecoration(
                          isDense: true,
                          suffixIcon: show
                              ? IconButton(
                                  onPressed: () {
                                    setState(() {
                                      show = false;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.visibility_outlined,
                                  ),
                                )
                              : IconButton(
                                  onPressed: () {
                                    setState(() {
                                      show = true;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.visibility_off_outlined,
                                  ),
                                ),
                          hintText: "Password",
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[350], width: 1.0),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Container(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 42,
                    child: MaterialButton(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff1D55C5),
                              Color(0xffE93354),
                            ],
                          ),
                        ),
                      ),
                      onPressed: () {
                        Login(_lmail.text, _lpass.text);
                      },
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          forgotPassword();
                        },
                        child: Text(
                          "Forgot Password?",
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          /// sign up hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Container(
              child: Column(
                children: [
                  /// Usrname Hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: HexColor("#1F54C315"),
                            offset: const Offset(
                              0,
                              6.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: _rmail,
                        cursorColor: Colors.grey[350],
                        decoration: InputDecoration(
                          hintText: "Email Address",
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey[350],
                              width: 1.0,
                            ),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Container(height: 10),

                  /// Password hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                          color: HexColor("#1F54C315"),
                          offset: const Offset(
                            0,
                            6.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                      ]),
                      child: TextField(
                        controller: _rpass,
                        cursorColor: Colors.grey[350],
                        obscureText: show,
                        decoration: InputDecoration(
                          isDense: true,
                          suffixIcon: show
                              ? IconButton(
                                  onPressed: () {
                                    setState(() {
                                      show = false;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.visibility_outlined,
                                  ),
                                )
                              : IconButton(
                                  onPressed: () {
                                    setState(() {
                                      show = true;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.visibility_off_outlined,
                                  ),
                                ),
                          hintText: "Password",
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[350], width: 1.0),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Container(height: 10),

                  /// Password hereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                          color: HexColor("#1F54C315"),
                          offset: const Offset(
                            0,
                            6.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                      ]),
                      child: TextField(
                        controller: _rpass2,
                        cursorColor: Colors.grey[350],
                        obscureText: show,
                        decoration: InputDecoration(
                          isDense: true,
                          suffixIcon: show
                              ? IconButton(
                                  onPressed: () {
                                    setState(() {
                                      show = false;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.visibility_outlined,
                                  ),
                                )
                              : IconButton(
                                  onPressed: () {
                                    setState(() {
                                      show = true;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.visibility_off_outlined,
                                  ),
                                ),
                          hintText: "Re-enter Password",
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey[350], width: 1.0),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Container(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 42,
                    child: MaterialButton(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(
                          child: Text(
                            "SIGNUP",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff1D55C5),
                              Color(0xffE93354),
                            ],
                          ),
                        ),
                      ),
                      onPressed: () {
                        Signup(_rmail.text, _rpass.text, _rpass2.text);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bottom() {
    return Container(
      height: Get.height * .2 - 40,
      width: Get.width,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                "assets/facebook1.svg",
              ),
              SvgPicture.asset(
                "assets/Twitter1.svg",
              ),
              SvgPicture.asset(
                "assets/mail1.svg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
