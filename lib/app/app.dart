import 'package:flutter/material.dart';
// import 'package:study_buddy/model/assignment_data__model.dart';
import 'package:study_buddy/tabs/assignment_details__tab.dart';
import '../screens/assignment__screen.dart';
import '../screens/corse_guide__screen.dart';
import '../screens/corse_materials__screen.dart';
import '../screens/home__screen.dart';
import '../screens/login__screen.dart';
import '../screens/splash__screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        Assignments.routeName: (context) => const Assignments(),
        CorseMaterials.routeName: (context) => const CorseMaterials(),
        CorseGuid.routeName: (context) => const CorseGuid(),
        Assignments.routeName: (context) => const Assignments(),
        AssignmentItemDetails.routeName: (context) =>
            const AssignmentItemDetails(),
      },
    );
  }
}
