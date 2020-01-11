import 'package:flutter/material.dart';
import 'package:flutter_clock_helper/customizer.dart';
import 'package:flutter_clock_helper/model.dart';
import 'package:provider/provider.dart';
import 'package:vb_clock/helper/app_helper.dart';
import 'package:vb_clock/view/snow_clock_view.dart';

import 'helper/ui_helper.dart';
import 'viewmodel/snow_view_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SnowViewModel>(
      create: (_) => SnowViewModel(ClockModel()),
      child: MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
            fontFamily: APPHELPER.FONT_FAMILY,
            textTheme: TextTheme(
              display1: TextStyle(
                  fontSize: UIHELPER.FONT_SIZE_NORMAL, color: Colors.white),
              display2: TextStyle(
                  fontSize: UIHELPER.FONT_SIZE_MEDIUM, color: Colors.white),
              display3: TextStyle(
                  fontSize: UIHELPER.FONT_SIZE_HIGH, color: Colors.white),
            )),
        title: 'Material App',
        home: SnowClockView(),
      ),
    );
  }
}
