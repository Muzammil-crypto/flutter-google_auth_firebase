import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'modules/login/view/login_view.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Google Auth',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginView(),
      ),
    );
  }
}
