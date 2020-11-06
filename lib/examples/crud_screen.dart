import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter_with_lyhour/providers/global_configuration.dart';
import 'package:provider/provider.dart';

class CrudScreen extends StatefulWidget {
  static const route = '/crudscreen';
  @override
  _CrudScreenState createState() => _CrudScreenState();
}

class _CrudScreenState extends State<CrudScreen> {
  @override
  Widget build(BuildContext context) {
    var globalConfigState = Provider.of<GlobalConfigurationProvider>(context);
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("CRUD"),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                child: Text("hi"),
              ),
              Container(
                child: Text(
                    Provider.of<GlobalConfigurationProvider>(context).appName),
              ),
              Text(globalConfigState.author),
              OutlineButton(
                onPressed: () {
                  Provider.of<GlobalConfigurationProvider>(context,
                          listen: false)
                      .changeAuthorName(newName: "fuck u ");
                },
                child: Text("change name to fuck u "),
              )
            ],
          ),
        ),
      ),
    );
  }
}
