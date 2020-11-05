import 'package:example_flutter_cubetiq/examples/crud_screen.dart';
import 'package:example_flutter_cubetiq/examples/fetch_data_screen.dart';
import 'package:example_flutter_cubetiq/examples/lifecycle_screen.dart';
import 'package:example_flutter_cubetiq/inteface/screen_interface.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        FetchDataScreen.route: (context) => FetchDataScreen(),
        CrudScreen.route: (context) => CrudScreen(),
        LifeCycleScreen.route: (context) => LifeCycleScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ScreenInterface> screenData = [
    ScreenInterface(title: "CRUD", route: CrudScreen.route),
    ScreenInterface(title: "FETCH DATA", route: FetchDataScreen.route),
    ScreenInterface(title: "Life Cycle", route: LifeCycleScreen.route),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: Center(
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return OutlineButton(
                  onPressed: () {
                    Navigator.pushNamed(context, screenData[index].route);
                  },
                  child: Text(screenData[index].title),
                );
              },
              itemCount: screenData.length,
            ),
          ),
        ));
  }
}
