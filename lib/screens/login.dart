import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:fanwelt/screens/home.dart';
import 'package:fanwelt/screens/registration.dart';

// import 'apiAuth.dart';
// import 'apiTemp.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void Print() {
    print('Email textfield is: ${emailController.text}');
    print('Password textfield is: ${passwordController.text}');
  }

  Future login() async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      try {
        var headers = {'Content-Type': 'application/json'};
        var request =
            http.Request('POST', Uri.parse('http://45.79.121.95:3002/login'));
        request.body =
            json.encode({"email": emailController.text, "password": passwordController.text});
        request.headers.addAll(headers);

        http.StreamedResponse response = await request.send();
        print("Response code : ${response.statusCode}");
        if (response.statusCode == 200) {
          var data = await response.stream.bytesToString();
          print(jsonDecode(data));
          print("Account Logged in successfully");
         // print(data["token"]);
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ));
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Logged in!'),
              content: const Text("You've successfully logged in"),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('Continue'),
                ),
              ],
            ),
          );
        } else {
          print("failed  :");
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Email not registered!"),
            ),
          );
        }
      } catch (e) {
        print(e.toString());
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Email/password value empty"),
        ),
      );
    }
  }

  bool _isObscure = true, ifObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 100.0),
          child: Text(
            "Login",
            style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.yellow[700],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Image(
                  image: AssetImage(
                    'tepl.png',
                  ),
                  // height: 150,
                  // width: 200,
                )),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      borderSide: BorderSide(
                        color: Colors.indigoAccent,
                        width: 3,
                      )),
                  //labelText: "Email",
                  hintText: "Enter your email",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  prefixIcon: Icon(Icons.drafts_outlined),
                ),
                autofocus: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: passwordController,
                obscureText: _isObscure,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    //labelText: "Password",
                    hintText: "Enter your password",
                    
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off))),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () async {
                Print();
                await login();
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.indigo.shade900,
                      Colors.indigo.shade700,
                      Colors.indigo.withOpacity(0.6),
                      Colors.blueGrey
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.indigo[600],
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'OR',
              style: TextStyle(color: Colors.grey.shade700),
            ),
            const SizedBox(
              height: 5,
            ),
            Card(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width / 1.24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.indigo),
                  color: Colors.white30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5)),
                        const CircleAvatar(
                          backgroundImage: AssetImage('google.png'),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Login With Google',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo[700],
                              fontSize: 20),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 120,
                ),
                const Text("Don't have account?"),
                InkWell(
                  child: Text(
                    "Signup",
                    style: TextStyle(color: Colors.indigo[700]),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterUser(),
                        ));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
