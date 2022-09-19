import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:fanwelt/screens/login.dart';


import 'home.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController securityController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();
  void Print() {
    print('Email textfield is: ${emailController.text}');
    print('Password textfield is: ${passwordController.text}');
    print('Confirm Password textfield is: ${confirmpassController.text}');
    print('Private key textfield is: ${securityController.text}');
  }

  Future login() async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      try {
        var headers = {'Content-Type': 'application/json'};
        var request =
            http.Request('POST', Uri.parse('http://45.79.121.95:3002/signup'));
        request.body = json.encode({
          "email": emailController.text,
          "password": passwordController.text,
          "confirmpass": confirmpassController.text,
          "privatekey": securityController.text
        });
        request.headers.addAll(headers);

        http.StreamedResponse response = await request.send();
        print("Response code : ${response.statusCode}");
        if (response.statusCode == 200) {
          var data = await response.stream.bytesToString();
          print(jsonDecode(data));
          var decoded = jsonDecode(data);
          if (decoded["message"] != null) {ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("E-mail already Exists."),
            ),
          );
            
          }
          else{
             print("Account created successfully");
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ));
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Registered!'),
              content: const Text("You've successfully created account."),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('Continue'),
                ),
              ],
            ),
          );
          }
          
        } else {
          print("failed  :");
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Connection failed"),
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
          padding: EdgeInsets.symmetric(horizontal: 80.0),
          child: Text(
            "Register",
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
            SizedBox(
              height: 20,
            ),
            const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 60,
                ),
                child: Image(
                  image: AssetImage(
                    'tepl.png',
                  ),
                  //height: 150,width: 200,
                )),
            SizedBox(
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
                  ),
                  //labelText: "Email",
                  hintText: "Enter your email",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  prefixIcon: Icon(Icons.drafts_outlined),
                  focusColor: Colors.indigo,
                ),
              ),
            ),
            SizedBox(
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: confirmpassController,
                obscureText: ifObscure,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    //labelText: "Confirm Password",
                    hintText: "Confirm password",
                  
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            ifObscure = !ifObscure;
                          });
                        },
                        icon: Icon(ifObscure
                            ? Icons.visibility
                            : Icons.visibility_off))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: securityController,
                keyboardType: TextInputType.emailAddress,
                autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  //labelText: "Email",
                  hintText: "Security Phrase",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  prefixIcon: Icon(Icons.key_outlined),
                  focusColor: Colors.indigo,
                ),
              ),
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
                    'Sign Up',
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
                          'Signup With Google',
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
                  width: 50,
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                const Text("Already have account?"),
                InkWell(
                  child: Text(
                    "Login!",
                    style: TextStyle(color: Colors.indigo[700]),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LogIn()));
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
