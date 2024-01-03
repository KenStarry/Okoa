import 'package:flutter/material.dart';
import 'package:okoa/features/feature_auth/presentation/login/components/login_card_clipper.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: [
          ClipPath(
            clipper: LoginCardClipper(),
            child: Container(
              height: 400,
              width: double.infinity,
              decoration:
                  BoxDecoration(color: Theme.of(context).primaryColorLight),
              child: Container(width: double.infinity, height: double.infinity),
            ),
          ),

          //  profile pic icon
          Positioned(
            left: (MediaQuery.of(context).size.width * 0.5) - 50,
            top: 15,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      width: 3,
                      strokeAlign: BorderSide.strokeAlignOutside)),
            ),
          )
        ],
      ),
    );
  }
}
