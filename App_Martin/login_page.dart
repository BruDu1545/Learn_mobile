import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";
  String errorMessage = "";

  Widget _body() {
    return Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/images/logo-vertical.png'),
                  ),
                  Container(height: 20),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                        color: Colors.grey,
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 16,
                        bottom: 16,
                      ),
                      child: Column(
                        children: [
                          TextField(
                            onChanged: (typeUser) {
                              email = typeUser;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 4.0,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 20,
                          ),
                          TextField(
                            onChanged: (typeUser) {
                              password = typeUser;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 4.0,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 25,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (email == 'Bruno@gmail.com' &&
                                  password == '123') {// Modificar para login com DB
                                Navigator.of(context)
                                    .pushReplacementNamed('/home');
                              } else {
                                setState(() {
                                  errorMessage = 'Email or password incorrect';
                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              child: Text(
                                'Login',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          if (errorMessage.isNotEmpty) ...{
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              errorMessage,
                              style: TextStyle(color: Colors.red),
                            )
                          }
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Container(
              color: Colors.black,
            ),
          ),
          _body(),
        ],
      ),
    );
  }
}
