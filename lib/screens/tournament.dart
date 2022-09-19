// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fanwelt/screens/tournamentList.dart';

class Tournament extends StatelessWidget {
  const Tournament({Key? key}) : super(key: key);

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
            'Tournaments',
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
              const SizedBox(height: 15,),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
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
              
              const SizedBox(height: 20,),
              Card(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width / 1.24,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                          const CircleAvatar(
                            backgroundImage: AssetImage('ipl.png'),
                          ),
                          InkWell(
                        child: const Text(
                          ' Indian Premier League',
                          style: TextStyle(
                            fontSize: 18,color: Colors.white
                          ),
                        ),
                        onTap: () {
                          // ignore: avoid_print
                          print('Text Clicked');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TournamentList()));
                        },
                      ),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.symmetric(horizontal: 25)),
                          Text(
                            '54 Matches',
                            style: TextStyle(color: Colors.grey[400]),
                          ),
                          const SizedBox(
                            width: 130,
                          ),
                          Text(
                            'T-20',
                            style: TextStyle(color: Colors.grey[400]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
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
                          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
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
                          const Padding(padding: EdgeInsets.symmetric(horizontal: 25)),
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
                          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
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
                          const Padding(padding: EdgeInsets.symmetric(horizontal: 25)),
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
      ),
    );
  }
}
