import 'package:fanddapidata_using_getx/common_module/AppColors.dart';
import 'package:fanddapidata_using_getx/common_module/AppStrings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/product_controller.dart';

class ProductListView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text(AppString.productList)),
        ),
        body: Obx(() {
          if (productController.isLoading.value) {
            return Center(
              child: const CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: productController.productList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              productController.productList[index].imageLink
                                  .toString(),
                              width: 150,
                              height: 100,
                              fit: BoxFit.fill,
                              color: AppColor.purpleColor,
                              colorBlendMode: BlendMode.color,
                            ),
                          ),
                        ),
                        Flexible(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productController.productList[index].name,
                              style: const TextStyle(fontSize: 18),
                            ),
                            Text(
                              productController.productList[index].brand,
                              style:
                                  const TextStyle(fontSize: 18, color: AppColor.grey),
                            ),
                             Text(
                              productController.productList[index].category,
                              style:
                                  const TextStyle(fontSize:14, color: AppColor.grey),
                            ),
                          ],
                        ))
                      ],
                    ),
                    Container(
                      height: 2,
                      color: AppColor.grey220,
                    )
                  ],
                );
              },
            );
          }
        }));
  }
}
