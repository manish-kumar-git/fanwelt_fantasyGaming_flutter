// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class UpcomingMatches extends StatelessWidget {
  const UpcomingMatches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: 35,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.indigo),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text(
            'Upcoming Matches',
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: <
                  Widget>[
                // const SizedBox(width: 20),
                    ElevatedButton( style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo,elevation: 10 ,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ,padding: const EdgeInsets.only(
                             top: 5.0, bottom: 5.0, right: 10.0, left: 5.0), ) ,onPressed: (){}, child: Row(mainAxisSize: MainAxisSize.min,children: [
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
                                      ))),],)),
                       const SizedBox(width: 10),
                       ElevatedButton( style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: Colors.white,elevation: 10,
                         padding: const EdgeInsets.only(
                             top: 5.0, bottom: 5.0, right: 10.0, left: 10.0),) ,onPressed: (){}, child: Row(
                           mainAxisSize: MainAxisSize.min,
                             children: <Widget>[
                               Image.asset(
                                 'assets/football.png',
                                 height: 30.0,
                                 width: 30.0,
                               ),],),
                      
             ) ]),
              
              const SizedBox(
                height: 20,
              ),
              Card(
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
                            style: TextStyle(color: Colors.white, fontSize: 10),
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
                height: 15,
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
                height: 15,
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
                ),            ],
          ),
        ),
      ),
    );
  }
}
