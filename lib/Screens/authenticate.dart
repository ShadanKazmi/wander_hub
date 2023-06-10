import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool isMale = true;
  bool isSignUpScreen = true;
  bool isRememberMe = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: ElevatedButton.icon(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/feed');
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
            icon: Icon(
              Icons.skip_next_sharp,
            ),
            label: Text(
              'Skip',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Image.asset(
              'assets/wanderhubIcon.jpg',
            ),
            // centerTitle: true,
            // actions: [
            //   // SizedBox(
            //   //   width: 100,
            //   //   child: ElevatedButton.icon(
            //   //     onPressed: (){},
            //   //     icon: Icon(Icons.skip_next_sharp),
            //   //     label: Text('Skip'),
            //   //   ),
            //   // ),
            // ],
          ),
          body: Stack(
            children: [
              Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/wanderstock1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(top: 130, left: 20),
                      color: Colors.greenAccent.withOpacity(0),
                      child: Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: isSignUpScreen
                                  ? 'Ready to Wander ?'
                                  : "Welcome Back",
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              // children: [
                              //   // TextSpan(
                              //   //   // text: " WanderHub",
                              //   //   style: TextStyle(
                              //   //     fontSize: 25,
                              //   //     fontWeight: FontWeight.bold,
                              //   //     color: Colors.yellow[700],
                              //   //   ),
                              //   // ),
                              // ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            isSignUpScreen
                                ? "Sign-up to continue"
                                : "Log-in to Wander",
                            style: TextStyle(
                              letterSpacing: 1,
                              color: Colors.white,
                            ),
                          ),
                          // Image(
                          //   image: AssetImage('assets/wanderhubIcon.jpg'),
                          //   fit: BoxFit.fill,
                          // ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                  )),
              Positioned(
                top: 250,
                child: Container(
                  height: 380,
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width - 40,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 5,
                        ),
                      ]),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSignUpScreen = false;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: !isSignUpScreen
                                        ? Colors.black
                                        : Colors.grey,
                                  ),
                                ),
                                if (!isSignUpScreen)
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    height: 2,
                                    width: 55,
                                    color: Colors.orange,
                                  )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSignUpScreen = true;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  "Sign-Up",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: isSignUpScreen
                                        ? Colors.black
                                        : Colors.grey,
                                  ),
                                ),
                                if (isSignUpScreen)
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    height: 2,
                                    width: 55,
                                    color: Colors.orange,
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      if (isSignUpScreen) buildSignUp(),
                      if (!isSignUpScreen) buildLogin(),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Container buildLogin() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          buildTextField(Icons.person, "Name", false, true),
          SizedBox(height: 15),
          buildTextField(Icons.verified_user_outlined, "Username", false, true),
          SizedBox(height: 15),
          buildTextField(Icons.password_outlined, "Password", true, false),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {},
            child: Text("Submit"),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  Container buildSignUp() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          buildTextField(Icons.account_box_outlined, "Username", false, false),
          SizedBox(height: 15),
          buildTextField(Icons.account_box_outlined, "Email", false, true),
          SizedBox(height: 15),
          buildTextField(Icons.account_box_outlined, "Password", true, false),
          // Row(
          //   children: [
          //     Container(
          //       width: 30,
          //       height: 30,
          //       decoration: BoxDecoration(
          //         border: Border.all(
          //           width: 1,
          //           color: Colors.indigoAccent,
          //         ),
          //         borderRadius: BorderRadius.circular(15),
          //       ),
          //       child: Icon(Icons.account_box_outlined),
          //     ),
          //   ],
          // ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {},
            child: Text("Submit"),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  TextField buildTextField(
      IconData icon1, String hintText, bool isPassword, bool isEmail) {
    return TextField(
      obscureText: isPassword,
      keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon1,
          color: Colors.amber,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black87,
          ),
          borderRadius: BorderRadius.all(Radius.circular(35)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black87,
          ),
          borderRadius: BorderRadius.all(Radius.circular(35)),
        ),
        contentPadding: EdgeInsets.all(10),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
    );
  }
}
