import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieLoader extends StatefulWidget {
  const LottieLoader({super.key});

  @override
  State<LottieLoader> createState() => _LottieLoaderState();
}

class _LottieLoaderState extends State<LottieLoader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Center(
        child: Lottie.asset("assets/lottie/loading.json"),
      ),
    );
  }
}
