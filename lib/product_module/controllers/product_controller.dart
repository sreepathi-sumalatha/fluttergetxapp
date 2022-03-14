import 'package:fanddapidata_using_getx/api_module/api_service.dart';
import 'package:fanddapidata_using_getx/product_module/modules/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{
  var isLoading = true.obs;
 List productList=<ProductModel>[].obs;
  
  @override
  void onInit(){
    fetchProducts();
    super.onInit();
  }
  void fetchProducts() async{
    try{
      isLoading(true);
      var products = await ApiService.fetchProducts();
      if(products!= null){
        productList.assignAll(products);
      }
    }finally{
isLoading(false);
    }

  }
}