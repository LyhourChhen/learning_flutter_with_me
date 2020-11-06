import 'package:flutter/material.dart';
import 'package:learning_flutter_with_lyhour/app/apps.dart';
import 'package:learning_flutter_with_lyhour/providers/global_configuration.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: GlobalConfigurationProvider())
      ],
      child: MyApp(),
    ),
  );
}
