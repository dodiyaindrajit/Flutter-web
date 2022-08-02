import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_expenses/constant.dart';
import 'package:flutter_web_expenses/screen/home/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Flutter Demo',
          scrollBehavior: NoThumbScrollBehavior().copyWith(scrollbars: false),
          theme: ThemeData(
            scaffoldBackgroundColor: Constant.deepBlue,
            textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme)
                .apply(bodyColor: Colors.white),
            iconTheme: const IconThemeData(color: Colors.white),
            canvasColor: Colors.teal.shade300,
          ),
          home: const Home(),
        );
      }
    );
  }
}
class NoThumbScrollBehavior extends ScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.stylus,
  };
}