// ignore_for_file: deprecated_member_use, unused_field

import 'package:fanwelt/screens/apiGet.dart';
import 'package:flutter/material.dart';
import 'package:fanwelt/screens/login.dart';
import 'package:fanwelt/screens/registration.dart';
import 'package:fanwelt/screens/room.dart';
import 'package:fanwelt/screens/tournament.dart';
import 'package:fanwelt/screens/upcomingMatches.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // ignore: unused_field
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Room(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            leadingWidth: 35,
            leading: const CircleAvatar(
              backgroundImage: AssetImage('profile.jpg'),
              maxRadius: 15,
              backgroundColor: Colors.red,
            ),
            title: const Text(
              'Fanwelt',
              style: TextStyle(color: Colors.indigo),
            ),
            centerTitle: true,
            backgroundColor: Colors.yellow[700],
            actions: const [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.person,
                  color: Colors.indigo,
                ),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.message,
                  color: Colors.indigo,
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(width: 20),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.only(
                                top: 5.0, bottom: 5.0, right: 10.0, left: 5.0),
                          ),
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: ((context) => ApiGet())));},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                'assets/Ball.png',
                                height: 30.0,
                                width: 30.0,
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text("Cricket ",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ))),
                            ],
                          )),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.white,
                          elevation: 10,
                          padding: const EdgeInsets.only(
                              top: 5.0, bottom: 5.0, right: 10.0, left: 10.0),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Image.asset(
                              'assets/football.png',
                              height: 30.0,
                              width: 30.0,
                            ),
                          ],
                        ),
                      )
                    ]),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Text("My Rooms",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      width: 150,
                    ),
                    InkWell(
                      onTap: () {
                        // ignore: avoid_print
                        print('Text Clicked');
                        
                      },
                      child: const Text(
                        'View All  >',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LogIn()));
                      }),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.2,
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
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterUser()));
                      }),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.2,
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
                            'Signup',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.zero,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.14,
                    width: MediaQuery.of(context).size.width / 1.25,
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
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.indigo[600],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.start,

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13.0),
                              child: Text(
                                "OPPO IPL",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 135,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13.0),
                              child: Text(
                                "Public",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        //const SizedBox(height: 3,),
                        const Divider(
                          color: Colors.blueGrey,
                          height: 10,
                          thickness: 2,
                          indent: 25,
                          endIndent: 25,
                        ),
                        const SizedBox(
                          height: 5,
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13.0),
                              child: Text(
                                "Mumbai Indians",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 58,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13.0),
                              child: Text(
                                "Delhi Capitals",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 13,
                              ),
                              child: Image(
                                image: AssetImage(
                                  'mi.png',
                                ),
                                height: 40,
                                width: 40,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 10),
                              child: Text(
                                "MI",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              "3h",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 13.0, vertical: 10),
                              child: Text(
                                "DC",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 13,
                              ),
                              child: Image(
                                image: AssetImage(
                                  'dc.png',
                                ),
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 13.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  color: Colors.grey.shade300.withOpacity(0.35),
                                  child: const Text(
                                    "  WINNING PRICE  ",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "10 ₹",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            const SizedBox(
                              width: 110,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13.0),
                              child: Image(
                                image: AssetImage(
                                  'flag.png',
                                ),
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Text("Upcoming Matches",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      width: 80,
                    ),
                    InkWell(
                      child: const Text(
                        'View All  >',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      onTap: () {
                        // ignore: avoid_print
                        print('Text Clicked');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const UpcomingMatches()));
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.14,
                    width: MediaQuery.of(context).size.width / 1.24,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[350],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13.0),
                              child: Text(
                                "OPPO IPL",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13.0),
                              child: Icon(
                                Icons.notifications_active,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.blueGrey,
                          height: 10,
                          thickness: 2,
                          indent: 25,
                          endIndent: 25,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13.0),
                              child: Text(
                                "Rajesthan Royals",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 13.0),
                              child: Text(
                                "Channai Superkings",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 13,
                              ),
                              child: Image(
                                image: AssetImage(
                                  'rr.png',
                                ),
                                height: 40,
                                width: 40,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 10),
                              child: Text(
                                "RR",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Text(
                              "3h",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 48,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 13.0, vertical: 10),
                              child: Text(
                                "CS",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              child: Image(
                                image: AssetImage(
                                  'cs.png',
                                ),
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 13.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
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
                                  ),
                                  // color: Colors.grey.shade300.withOpacity(0.35),
                                  child: const Text(
                                    "  WINNING PRICE  ",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              "10 ₹",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                            const SizedBox(
                              width: 120,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Image(
                                image: AssetImage(
                                  'flag.png',
                                ),
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Text("Tournament",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      width: 140,
                    ),
                    InkWell(
                      child: const Text(
                        'View All  >',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      onTap: () {
                        // ignore: avoid_print
                        print('Text Clicked');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Tournament()));
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width / 1.24,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[350],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5)),
                            CircleAvatar(
                              backgroundImage: AssetImage('profile.jpg'),
                            ),
                            Text(
                              '  Indian Premier League',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25)),
                            Text(
                              '54 Matches',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                            const SizedBox(
                              width: 130,
                            ),
                            Text(
                              'T-20',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width / 1.24,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[350],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5)),
                            CircleAvatar(
                              backgroundImage: AssetImage('profile.jpg'),
                            ),
                            Text(
                              '  Indian Premier League',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25)),
                            Text(
                              '54 Matches',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                            const SizedBox(
                              width: 130,
                            ),
                            Text(
                              'T-20',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width / 1.24,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[350],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5)),
                            CircleAvatar(
                              backgroundImage: AssetImage('profile.jpg'),
                            ),
                            Text(
                              '  Indian Premier League',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25)),
                            Text(
                              '54 Matches',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                            const SizedBox(
                              width: 130,
                            ),
                            Text(
                              'T-20',
                              style: TextStyle(color: Colors.grey[700]),
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
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.indigoAccent,
            unselectedItemColor: Colors.grey[700],
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.emoji_events,
                ),
                label: 'My Rooms',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet_outlined),
                label: 'Wallet',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                label: 'More',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      );
}
