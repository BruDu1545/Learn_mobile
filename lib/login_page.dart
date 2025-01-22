import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.asset('assets/images/logo.png')),
                    Container(height: 50),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12, right: 12, top: 20, bottom: 12),
                        child: Column(
                          children: [
                            TextField(
                              onChanged: (typeUser) {
                                email = typeUser;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  labelText: 'Email',
                                  border: OutlineInputBorder()),
                            ),
                            Container(height: 10),
                            TextField(
                              onChanged: (typeUser) {
                                password = typeUser;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  border: OutlineInputBorder()),
                            ),
                            SizedBox(height: 50),
                            ElevatedButton(
                              onPressed: () {
                                if (email == 'bruno@gmail.com' &&
                                    password == '123') {
                                  Navigator.of(context)
                                      .pushReplacementNamed('/home');
                                } else {
                                  Text(
                                    'Email or password incorrect',
                                    style: TextStyle(
                                      fontSize: 5,
                                      color: Colors.red,
                                    ),
                                  );
                                }
                              },
                              child: SizedBox(
                                width: double.infinity,
                                child: Text('Login', textAlign: TextAlign.center,)
                                ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              child:
                  Image.asset('assets/images/bg_login.jpg', fit: BoxFit.cover)),
          Container(
            color: Colors.black.withValues(alpha: 0.7),
          ),
          _body(),
        ],
      ),
    );
  }
}
