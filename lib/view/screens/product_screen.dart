import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:section_task/model/product_model.dart';
import 'package:section_task/view_model/product_controller.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key, required this.index});
  final int index;
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
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
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: FutureBuilder(
        future: _getProduct,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Padding(
              padding: const EdgeInsets.only(left: 23, right: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    snapshot.data![widget.index].images,
                    width: 369,
                    height: 369,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    snapshot.data![widget.index].title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  const SizedBox(height: 19),
                  RatingBar.builder(
                    initialRating: 5,
                    minRating: 1,
                    ignoreGestures: true,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 20,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  const SizedBox(height: 19),
                  Row(
                    children: [
                      Image.asset("assets/Group 586.png"),
                      const SizedBox(width: 2),
                      Text(
                        snapshot.data![widget.index].price.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "about",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    snapshot.data![widget.index].description,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: 343,
                    height: 51,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: const Color(0xffF16A26)),
                      onPressed: () {},
                      child: const Text(
                        "Add to cart",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
