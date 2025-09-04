import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_met/ui/my_met.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.instance.initialize();
  runApp(const MyMET());
}

class MyMET extends StatelessWidget {
  const MyMET({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyMET',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        textTheme: GoogleFonts.quicksandTextTheme(),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.greenAccent,
          brightness: Brightness.dark,
        ),
        textTheme: GoogleFonts.quicksandTextTheme(
          ThemeData(brightness: Brightness.dark).textTheme,
        ),
      ),
      home: const Main(title: 'MyMET'),
    );
  }
}
