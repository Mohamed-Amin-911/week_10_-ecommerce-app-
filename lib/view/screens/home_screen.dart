import 'package:flutter/material.dart';
import 'package:section_task/model/product_model.dart';
import 'package:section_task/view/widgets/bottom_nav.dart';
import 'package:section_task/view/widgets/get_now.dart';
import 'package:section_task/view/widgets/product_card.dart';
import 'package:section_task/view/widgets/top_categories.dart';
import 'package:section_task/view_model/product_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<ProductClass>>? _getProduct;

  getProductss() async {
    ProductController productController = ProductController();
    _getProduct = productController.getProducts();
  }

  @override
  void initState() {
    getProductss();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 33,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 65),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/Group584.png"),
                Image.asset("assets/search.png"),
              ],
            ),
            const SizedBox(height: 37),
            Row(
              children: [
                const Text(
                  "Hello Fola ",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black),
                ),
                const SizedBox(width: 7),
                Image.asset("assets/Vector.png"),
              ],
            ),
            const SizedBox(height: 9),
            const Text(
              "Let’s start shopping!",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color.fromARGB(126, 0, 0, 0)),
            ),
            const SizedBox(height: 20),
            const GetNowWidget(),
            const SizedBox(height: 24),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Categories",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xffF17547)),
                ),
              ],
            ),
            const SizedBox(height: 33),
            const TopCategoriesWidget(),
            const SizedBox(height: 20),
            FutureBuilder(
              future: _getProduct,
              builder: (context, asyncSnapshot) {
                if (asyncSnapshot.connectionState == ConnectionState.done) {
                  return SizedBox(
                    height: 290,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 3,
                        childAspectRatio: 2 / 2.6,
                        crossAxisCount: 2,
                      ),
                      itemCount: asyncSnapshot.data!.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ProductWidget(
                            index: index,
                            title: "${asyncSnapshot.data?[index].title}",
                            image: "${asyncSnapshot.data?[index].images}",
                            price: "${asyncSnapshot.data?[index].price}");
                      },
                    ),
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
