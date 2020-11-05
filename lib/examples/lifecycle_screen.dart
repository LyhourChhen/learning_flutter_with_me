import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LifeCycleScreen extends StatefulWidget {
  static const route = '/lifecycleScreen';
  @override
  _LifeCycleScreenState createState() => _LifeCycleScreenState();
}

class _LifeCycleScreenState extends State<LifeCycleScreen> {
  int number = 0;

  @override
  void initState() {
    print("run on initState");

    setState(() {
      number = 999;
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("run on dependencyChange");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print("run on build");
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Life Cycle"),
        ),
        body: SafeArea(
          child: Container(
              child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlineButton(
                  onPressed: () {
                    setState(() {
                      number++;
                    });
                  },
                  child: Text("$number"),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
