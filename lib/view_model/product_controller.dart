import 'package:section_task/model/network_model.dart';
import 'package:section_task/model/product_model.dart';

class ProductController {
  String url = "https://api.escuelajs.co/api/v1/products?limit=10&offset=1";

  Future<List<ProductClass>> getProducts() async {
    Networking networking = Networking();
    final response = await networking.fetchData(url);
    final products = (response).cast<Map<String, dynamic>>();
    print(products[0]);
    List<ProductClass> productList =
        products.map((json) => ProductClass.fromJson(json)).toList();
    print(productList[0].title);
    return productList;
  }
}
