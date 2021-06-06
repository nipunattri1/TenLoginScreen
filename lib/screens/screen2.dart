import 'package:ten_screens_login/imports.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  double loginW = 70;
  double signW = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: Get.height * .4,
              width: Get.width,
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
              width: Get.width,
              height: Get.height,
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * .25,
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
                    padding: const EdgeInsets.all(18.0),
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
                            ],
                          ),
                          width: double.infinity,
                          height: Get.height * .4,
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
                              height: Get.height * .4 - 40,
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
                                    onPressed: () {},
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
