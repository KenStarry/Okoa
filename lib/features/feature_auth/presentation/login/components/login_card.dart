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
      height: 375,
      child: Stack(
        children: [

          //  Clip Form Field
          ClipPath(
            clipper: LoginCardClipper(),
            child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorLight,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0))),
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
                      Container(
                        width: 40,
                        height: 40,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Theme.of(context).scaffoldBackgroundColor,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: 3,
                                  blurRadius: 15)
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: SvgPicture.asset(
                            "assets/images/google_logo.svg",
                            fit: BoxFit.fill,
                          ),
                        ),
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
          ),

          //  next button
          Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: FilledButton(onPressed: () {}, child: Text("Next")))
        ],
      ),
    );
  }
}
