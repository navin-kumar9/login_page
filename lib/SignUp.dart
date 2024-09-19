import 'package:flutter/material.dart';
import 'package:login_page/HomePage.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/shape8.png"),
          const Text(
            "Welcome !",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Text("Username")],
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
              SizedBox(
                height: 20,
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
                      children: [Text("Phone")],
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  height: 50,
                  width: 440,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    "Create",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text("Alrady have an account?"),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ]),
          ),
          Spacer(),
          Image.asset("assets/images/shape9.png"),
        ],
      ),
    );
  }
}
