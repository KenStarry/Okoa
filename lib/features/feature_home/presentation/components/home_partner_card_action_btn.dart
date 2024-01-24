import 'package:flutter/material.dart';

class HomePartnerCardActionBtn extends StatelessWidget {
  final IconData icon;
  final Size size;
  final VoidCallback onTap;

  const HomePartnerCardActionBtn(
      {super.key, required this.icon, required this.size, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Theme.of(context).primaryColorLight),
        child: Center(
          child: Icon(
            icon,
            color: Theme.of(context).iconTheme.color!,
          ),
        ),
      ),
    );
  }
}
