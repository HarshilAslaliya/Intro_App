import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  CarouselController carouselController = CarouselController();
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        carouselController: carouselController,
        options: CarouselOptions(
          enableInfiniteScroll: false,
          initialPage: current,
          onPageChanged: (val, h1) {
            setState(() {
              current = val;
              print(current);
            });
          },
          viewportFraction: 1,
          height: MediaQuery.of(context).size.height * 1,
        ),
        items: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.only(right: 15),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();

                        prefs.setBool('isStart', true);

                        await Navigator.pushReplacementNamed(context, '/');
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Image(
                image: AssetImage('assets/images/1.jpg'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.deepPurpleAccent.shade400,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Introduction Of This App',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "The terms and conditions for a lock app will likely outline the app's "
                  "functionality, and any liability "
                  "or responsibility for the app's creators. It may also include information about "
                  "the app's privacy policy,including how user data is collected, used, and "
                  "stored. ",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.deepPurpleAccent.shade400),
                        ),
                        onPressed: () async {
                          await carouselController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Next',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.arrow_forward_ios_outlined),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();

                        prefs.setBool('isStart', true);
                        await Navigator.pushReplacementNamed(context, '/');
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Image(
                image: AssetImage('assets/images/2.jpg'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.deepPurpleAccent.shade400,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Details This App',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Access to a device or specific apps by requiring a password or PIN code to be entered in order to unlock them.Customizable lock settings: Some lock apps allow users to customize the lock settings, such as the type of lock (e.g. pattern, PIN, password).",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.deepPurpleAccent.shade400),
                        ),
                        onPressed: () async {
                          await carouselController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Next',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.arrow_forward_ios_outlined),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();

                        prefs.setBool('isStart', true);

                        await Navigator.pushReplacementNamed(context, '/');
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Image(
                image: AssetImage('assets/images/4.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.deepPurpleAccent.shade400,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Terms & Condition',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "The terms and conditions for a lock app will likely outline the app's "
                  "functionality, and any liability "
                  "or responsibility for the app's creators. It may also include information about "
                  "the app's privacy policy,including how user data is collected, used, and "
                  "stored. ",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.deepPurpleAccent.shade400),
                        ),
                        onPressed: () async {
                          SharedPreferences prefs =
                              await SharedPreferences.getInstance();

                          prefs.setBool('isStart', true);

                          await Navigator.pushReplacementNamed(context, '/');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Start',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.arrow_forward_ios_outlined),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class LoginPage2 extends StatefulWidget {
//   const LoginPage2({Key? key}) : super(key: key);
//
//   @override
//   State<LoginPage2> createState() => _LoginPage2State();
// }
//
// class _LoginPage2State extends State<LoginPage2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:
//     );
//   }
// }

// class LoginPage3 extends StatefulWidget {
//   const LoginPage3({Key? key}) : super(key: key);
//
//   @override
//   State<LoginPage3> createState() => _LoginPage3State();
// }
//
// class _LoginPage3State extends State<LoginPage3> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:
//     );
//   }
// }
