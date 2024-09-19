import 'package:flutter/material.dart';
import 'package:login_page/SignUp.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool tracker = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/shape7.png"),
          SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                Text(
                  "Welcome Back !",
                  // ignore: prefer_const_constructors
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Text("Email")],
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Text("Password")],
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: const Color.fromARGB(255, 218, 165, 22),
                        value: tracker,
                        onChanged: (value) {
                          setState(() {
                            tracker = !tracker;
                          });
                        }),
                    Text(
                      "Remember me",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.orange),
                    )
                  ],
                ),
                Container(
                  height: 50,
                  width: 440,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text("Don't you have an account?"),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          Image.asset("assets/images/shape6.png"),
        ],
      ),
    );
  }
}
