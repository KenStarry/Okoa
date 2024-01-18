import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AddPartnerAppbar extends StatelessWidget {
  const AddPartnerAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light),
      title: Text("Add Partner", style: Theme.of(context).textTheme.titleSmall),
      centerTitle: true,
      leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_rounded,
              color: Theme.of(context).iconTheme.color)),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
