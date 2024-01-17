import 'package:flutter/material.dart';

import '../../../../theme/colors.dart';

class TrackPartnerCard extends StatelessWidget {
  const TrackPartnerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //  image
        Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: accent, width: 5)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              "assets/images/curly_hair_man.png",
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        )
      ],
    );
  }
}
