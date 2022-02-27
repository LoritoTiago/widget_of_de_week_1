import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:widget_of_de_week_1/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  AnimationController? _lottie;

  @override
  void initState() {
    super.initState();
    _lottie = AnimationController(vsync: this);
    _lottie!.duration = const Duration(seconds: 5);
    _lottie!.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _lottie!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 7), () {
      Navigator.pushAndRemoveUntil(
          context,
          PageTransition(
            duration: const Duration(milliseconds: 700),
            type: PageTransitionType.fade,
            child: const Home(),
          ),
          (route) => false);
    });
    return Scaffold(
      body: Center(
        child: BounceInDown(
          controller: (c) {
            c.duration = const Duration(seconds: 2);
          },
          child: LottieBuilder.asset(
            "assets/animation/tenis.json",
            animate: true,
            controller: _lottie,
          ),
        ),
      ),
    );
  }
}
