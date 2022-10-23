import 'package:flutter/material.dart';
import 'package:flutter_nodejs_crud/model/product_model.dart';
import 'package:flutter_nodejs_crud/pages/product_item.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<ProductModel> products = List<ProductModel>.empty(growable: true);

  bool isApiCallProcess = false;

  @override
  void initState() {
    super.initState();

    products.add(
      ProductModel(
        productId: "1",
        productName: "Haldiram",
        productImage:
            "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=85,metadata=none,w=400,h=400/app/images/products/full_screen/pro_86973.jpg",
        productDescription: "Haldiram Foods",
        productPrice: 500,
      ),
    );

    products.add(
      ProductModel(
        productId: "1",
        productName: "Haldiram",
        productImage:
            "https://cdn.grofers.com/cdn-cgi/image/f=auto,fit=scale-down,q=85,metadata=none,w=400,h=400/app/images/products/full_screen/pro_86973.jpg",
        productDescription: "Haldiram Foods",
        productPrice: 500,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NodeJS - CRUD'),
        elevation: 0,
      ),
      backgroundColor: Colors.grey[200],
      body: productList(products),
    );
  }

  Widget productList(products) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Colors.green,
                  minimumSize: const Size(88, 36),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/add-product',
                  );
                },
                child: const Text('Add Product'),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: products.length,
                itemBuilder: (context, int index) {
                  return ProductItem(
                      model: products[index],
                      onDelete: (ProductModel model) {});
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
