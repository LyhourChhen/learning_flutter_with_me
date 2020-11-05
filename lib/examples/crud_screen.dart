import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrudScreen extends StatefulWidget {
  static const route = '/crudscreen';
  @override
  _CrudScreenState createState() => _CrudScreenState();
}

class _CrudScreenState extends State<CrudScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("CRUD"),
        ),
        body: SafeArea(
          child: Container(
            child: Text("hi"),
          ),
        ),
      ),
    );
  }
}
