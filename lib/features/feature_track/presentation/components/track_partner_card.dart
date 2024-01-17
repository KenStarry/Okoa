import 'package:flutter/material.dart';

import '../../../../theme/colors.dart';

class TrackPartnerCard extends StatelessWidget {
  const TrackPartnerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //  image
        Container(
          width: 80,
          height: 80,
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 5)
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(200),
            child: Image.asset(
              "assets/images/curly_hair_man.png",
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),

        //  partner name
        Text("Ken S.", style: Theme.of(context).textTheme.bodyMedium)
      ],
    );
  }
}
