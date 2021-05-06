import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//https://reqres.in/api/users?page=2
//Uri.https('reqres.in', '/api/users?page=2'

void main() {
  runApp(ApiTest());
}

class ApiTest extends StatefulWidget{
  @override
  _ApiTest createState() => _ApiTest();
}

class _ApiTest extends State<ApiTest>{

  Map data;
  List userData;

  Future<String> getData() async{
    //var uri = Uri.https("reqres.in", "api/users?page=2");
    var url = Uri.parse("https://reqres.in/api/users?page=2");
    http.Response response = await http.get(url);
    data = json.decode(response.body);
    setState(() {
      userData = data["data"];
    });
  }

  void initState(){
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Api Test"
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: ListView.builder(
          itemCount: userData == null ? 0: userData.length,
          itemBuilder: (BuildContext context, index){
            return Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(userData[index]['avatar']),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Name: "
                        "${userData[index]['first_name']} "
                            " ${userData[index]['last_name']} ",
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                        ),
                        Row(
                          children: [
                            Text(
                                "${userData[index]['email']}",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 10
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("id: ${userData[index]['id']}")
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Text(
            "Click Me",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: (){
            print("Nothing");
          },
        ),
      ),
    );
  }
}
