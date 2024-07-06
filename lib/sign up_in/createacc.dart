import 'package:flutter/material.dart';
import 'package:oc/widgets/Sign_In_Page.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/pexels-photo-1633578.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/juitlogo.jpeg',
                              fit: BoxFit.contain,
                              width: 90,
                              height: 90,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'Create Account',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          color: Colors.black.withOpacity(0.5),
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Full Name',
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintStyle: TextStyle(color: Colors.green),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintStyle: TextStyle(color: Colors.green),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintStyle: TextStyle(color: Colors.green),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                  obscureText: true,
                                ),
                                SizedBox(height: 20.0),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFFF6F61),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 50.0,
                                      vertical: 15.0,
                                    ),
                                  ),
                                  child: Text('Sign Up'),
                                ),
                                SizedBox(height: 40.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Already have an Account?",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SplashScreen()),
                                        );
                                      },
                                      child: Text(
                                        'Sign In',
                                        style:
                                            TextStyle(color: Color(0xFFFF6F61)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
}
