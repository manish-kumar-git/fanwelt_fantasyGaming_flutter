import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fanwelt/screens/model.dart';

class ApiGet extends StatefulWidget {
  const ApiGet({super.key});

  @override
  State<ApiGet> createState() => _ApiGetState();
}

class _ApiGetState extends State<ApiGet> {
  Future<model> getRequest() async {
    var url = Uri.parse(
        "https://rest.entitysport.com/v2/matches/?status=1&token=43a7a03a643068fe73cde001db21fe68");
    final response = await http.get(url);

    var responseData = json.decode(response.body);
    if (response.statusCode == 200) {
      print("Response code: ${response.statusCode}");
      print(responseData);
      //print("Match id   :   ${responseData['competition']}");
      return model.fromJson(responseData);
    } else {
      return model.fromJson(responseData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Matches"),
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder<model>(
                  future: getRequest(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data!.response!.items!.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                children: [
                                  Container(
                                      height:
                                          MediaQuery.of(context).size.height * .15,
                                      width:
                                          MediaQuery.of(context).size.width * .9,
                                          decoration: BoxDecoration(color: Colors.grey[300]),
                                      child: ListTile(
                                          title: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(snapshot
                                                      .data!.response!.items![index].title
                                                      .toString()),
                                                      SizedBox(width: 10,),
                                                      Padding(
                                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                                        child: Text(snapshot
                                                        .data!.response!.items![index].competition!.matchFormat
                                                        .toString(),style: const TextStyle(fontSize: 10,fontWeight: FontWeight.w300),),
                                                      ),
                                                ],
                                              ),
                                              Row(mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                
                                                Text(snapshot.data!.response!.items![index].subtitle.toString(),style: TextStyle(fontSize: 15,color: Colors.grey[700]),)
                                              ],),
                                              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      CircleAvatar(backgroundImage: NetworkImage(snapshot.data!.response!.items![index].teama!.logoUrl.toString(),),radius: 10,),
                                                    
                                                      Text(snapshot
                                                      .data!.response!.items![index].shortTitle
                                                      .toString()),
                                                      CircleAvatar(backgroundImage: NetworkImage(snapshot.data!.response!.items![index].teamb!.logoUrl.toString(),),radius: 10,),
                                                    ],
                                                  ),
                                                  SizedBox(height: 3,),
                                                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children: [
                                                      Text(snapshot.data!.response!.items![index].competition!.datestart.toString(),style: TextStyle(color: Colors.blueGrey[900]),),
                                                      Text(snapshot.data!.response!.items![index].competition!.dateend.toString(),style: TextStyle(color: Colors.blueGrey[900]),),
                                                    ],
                                                  ),
                          const Divider(
                          color: Colors.blueGrey,
                          height: 10,
                          thickness: 2,
                          indent: 25,
                          endIndent: 25,
                        ),
                                            ],
                                          ),
                                              
                                              
                                              
                                        )
                                      )
                                ],
                              ),
                            );
                          });
                    } else {
                      return Text("Loading");
                    }
                  }))
        ],
      ),
    );
  }
}
