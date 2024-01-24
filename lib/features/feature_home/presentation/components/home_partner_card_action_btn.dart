import 'package:flutter/material.dart';

class HomePartnerCardActionBtn extends StatelessWidget {
  final IconData icon;
  final Size size;

  const HomePartnerCardActionBtn(
      {super.key, required this.icon, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
      child: Center(
        child: Icon(
          icon,
          color: Theme.of(context).iconTheme.color!.withOpacity(0.6),
        ),
      ),
    );
  }
}
