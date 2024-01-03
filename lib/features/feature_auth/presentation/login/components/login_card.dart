import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:okoa/features/feature_auth/presentation/login/components/login_card_clipper.dart';
import 'package:okoa/features/feature_auth/presentation/login/components/login_textfield.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      height: 405,
      child: Stack(
        children: [
          //  Rectangular outline
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              width: 250,
              height: 10,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                  borderRadius: BorderRadius.circular(100)),
            ),
          ),

          //  Clip Form Field
          ClipPath(
            clipper: LoginCardClipper(),
            child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorLight,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  margin: const EdgeInsets.only(top: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //  login text
                      Text(
                        "Login",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),

                      //  login field
                      LoginTextField(
                        onChanged: (value) {},
                      ),

                      //  login with google
                      SvgPicture.asset(
                        "assets/images/google_logo.svg",
                        width: 50,
                        height: 50,
                        fit: BoxFit.fill,
                      )
                    ],
                  ),
                )),
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
              child: const Center(
                child: Icon(
                  Icons.face_6_rounded,
                  size: 32,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
