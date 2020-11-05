import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter_with_lyhour/inteface/fetch_data_interface.dart';

class FetchDataScreen extends StatefulWidget {
  static const route = '/fetchdatascreen';

  @override
  _FetchDataScreenState createState() => _FetchDataScreenState();
}

class _FetchDataScreenState extends State<FetchDataScreen> {
  List<FetchDataInterface> data = [];

  @override
  void initState() {
    var dio = Dio();
    var url = 'https://jsonplaceholder.typicode.com/todos';
    dio.get(url).then((value) {
      var recievedData = value as Response<dynamic>;
      recievedData.data.forEach((element) => {
            data.add(
              FetchDataInterface(
                  title: element['title'],
                  completed: element['completed'],
                  id: element['id'],
                  userId: element['userId']),
            )
          });
    }).catchError((onError) => print("err when fetch data $onError"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Fetch Data Screen"),
        ),
        body: SafeArea(
          child: data == null || data.length == 0
              ? Center(child: CircularProgressIndicator())
              : Container(
                  child: ListView.builder(
                    itemBuilder: (ctx, index) {
                      return ListTile(
                        dense: true,
                        enabled: data[index].completed,
                        leading: data[index].completed
                            ? Icon(Icons.check_box)
                            : Icon(Icons.accessibility_outlined),
                        subtitle: Text(data[index].title),
                        title: Text(data[index].title),
                        trailing: Text(data[index].id.toString()),
                        isThreeLine: true,
                      );
                    },
                    itemCount: data.length,
                  ),
                ),
        ),
      ),
    );
  }
}
