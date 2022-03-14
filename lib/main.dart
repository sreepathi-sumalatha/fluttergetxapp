import 'package:fanddapidata_using_getx/common_module/AppColors.dart';
import 'package:fanddapidata_using_getx/common_module/AppStrings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'product_module/views/product_list_view.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      title: AppString.fetchApiData,
      theme: ThemeData(
        primarySwatch: AppColor.purpleColor,

      ),
      home:ProductListView(),
    );
  }
}