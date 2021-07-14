import 'package:ten_screens_login/imports.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  void login(String username, String password) {}
  // TextEditingController  userame
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          background(),
          foreground(),
        ],
      ),
    );
  }

  Widget background() {
    return Container(
      child: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height -
                (MediaQuery.of(context).size.height - 60),
            right: MediaQuery.of(context).size.width -
                (MediaQuery.of(context).size.width - 100),
            child: SvgPicture.asset(
              "assets/background3.svg",
              width: MediaQuery.of(context).size.width * .6,
              height: MediaQuery.of(context).size.height * .8,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .2,
            right: MediaQuery.of(context).size.width * .65,
            child: SvgPicture.asset(
              'assets/dots 3/1.svg',
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .25,
            right: MediaQuery.of(context).size.width * .4,
            child: SvgPicture.asset(
              'assets/dots 3/2.svg',
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .18,
            right: -5,
            child: SvgPicture.asset(
              'assets/dots 3/3.svg',
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .54,
            right: MediaQuery.of(context).size.width * .9,
            child: SvgPicture.asset(
              'assets/dots 3/4.svg',
            ),
          ),
        ],
      ),
    );
  }

  Widget foreground() {
    return Column(
      children: [
        Container(height: MediaQuery.of(context).size.height * .3),
        Center(
          child: Container(
            // color: const Color(0xffffff45),
            width: MediaQuery.of(context).size.width * .8,
            height: MediaQuery.of(context).size.height * .7,
            child: Column(
              children: [
                Container(
                  height: 55,
                  child: TextField(
                    cursorColor: Color(0xff4E54C8),
                    decoration: InputDecoration(
                      hintText: "Username",
                      suffixIcon: Icon(
                        Icons.person_outline_outlined,
                        color: Color(0xff4A69FF),
                      ),
                      focusColor: Color(0xff4E54C8),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          color: Color(0xFFFFFFFF),
                          width: 1.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFFFFFFF),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x21000000),
                        offset: Offset(0, 26),
                        blurRadius: 40,
                      ),
                    ],
                  ),
                ),
                Container(height: 30),
                Container(
                  height: 55,
                  child: TextField(
                    cursorColor: Color(0xff4E54C8),
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: Icon(
                        Icons.lock_open,
                        color: Color(0xff4E54C8),
                      ),
                      focusColor: Color(0xff4E54C8),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          color: Color(0xFFFFFFFF),
                          width: 1.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFFFFFFF),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x21000000),
                        offset: Offset(0, 26),
                        blurRadius: 40,
                      ),
                    ],
                  ),
                ),
                Container(height: 10),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: const Color(0xFF757575),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    child: MaterialButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "SIGNIN",
                            style: TextStyle(
                              color: const Color(0xffffffff),
                            ),
                          ),
                          Icon(Icons.arrow_forward, color: Colors.white)
                        ],
                      ),
                    ),
                    width: 105,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      gradient: LinearGradient(
                        begin: Alignment(0.94, 0.0),
                        end: Alignment(-1.0, 0.0),
                        colors: [
                          const Color(0xff4a69ff),
                          const Color(0xff4ad384)
                        ],
                        stops: [0.0, 1.0],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x804aa4ba),
                          offset: Offset(0, 6),
                          blurRadius: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't Have a Account?"),
                        TextButton(onPressed: () {}, child: Text("SIGNUP"))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
