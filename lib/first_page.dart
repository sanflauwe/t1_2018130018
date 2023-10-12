import 'package:flutter/material.dart';
import 'package:t1_2018130018/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/img-1.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              width: 400,
              height: 1000,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-1, -1),
                    end: Alignment(-1, 6.5),
                    colors: <Color>[Color(0x00030303), Color(0xff030303)],
                    stops: <double>[0, 0.198],
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //welcome
                const Padding(
                  padding: EdgeInsets.only(
                    left: 15.0,
                    bottom: 0.5,
                  ),
                  child: Text(
                    'Welcome!',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2.5,
                      color: Colors.white,
                    ),
                  ),
                ),
                //Username
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: SizedBox(
                    width: 370,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Colors.white,
                        labelText: 'Username',
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                //password
                const Padding(
                  padding: EdgeInsets.only(
                    left: 15.0,
                    top: 0.5,
                    right: 15.0,
                    bottom: 15.0,
                  ),
                  child: SizedBox(
                    width: 370,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        prefixIconColor: Colors.white,
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                        suffixIcon: Icon(Icons.visibility),
                        suffixIconColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                //remember me & forgot password
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //remember me?
                    Padding(
                      padding: EdgeInsets.only(
                        top: 0.5,
                        left: 15.0,
                        bottom: 15.0,
                      ),
                      child: Text(
                        'Remember me',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    //forgot password?
                    Padding(
                      padding: EdgeInsets.only(
                        top: 0.5,
                        right: 15.0,
                        bottom: 15.0,
                      ),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 102, 187, 106),
                        ),
                      ),
                    ),
                  ],
                ),
                //button login
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.5,
                    bottom: 15.0,
                  ),
                  child: Center(
                    child: SizedBox(
                      width: 350,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                          Colors.green[600],
                        )),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SecondPage(
                                data: 'Hello World!',
                              ),
                            ),
                          );
                        },
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 50,
                        left: 40.0,
                        bottom: 30.0,
                      ),
                      child: Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 50,
                        right: 45.0,
                        bottom: 30.0,
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.green[600],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
