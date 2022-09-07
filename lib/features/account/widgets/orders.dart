// ignore_for_file: equal_elements_in_set

import 'package:flutter/material.dart';
import 'package:shop_app/constants/global_variables.dart';
import 'package:shop_app/features/account/widgets/single_product.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  // List<Order>? orders;
  // final AccountServices accountServices = AccountServices();

  // @override
  // void initState() {
  //   super.initState();
  //   fetchOrders();
  // }

  // void fetchOrders() async {
  //   orders = await accountServices.fetchMyOrders(context: context);
  //   setState(() {});
  // }

  //temporary list

  List list = [
    'https://images.unsplash.com/photo-1658769986562-8fc8af2d5a31?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    // return orders == null
    //     ? const Loader()
    // : Column(
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: const Text(
                'Your Orders',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 15,
              ),
              child: Text(
                'See all',
                style: TextStyle(
                  color: GlobalVariables.selectedNavBarColor,
                ),
              ),
            ),
          ],
        ),
        // display orders
        Container(
          height: 170,
          padding: const EdgeInsets.only(
            left: 10,
            top: 20,
            right: 0,
          ),
          // child: ListView.builder(
          //   scrollDirection: Axis.horizontal,
          //   itemCount: orders!.length,
          //   itemBuilder: (context, index) {
          //     return GestureDetector(
          //       onTap: () {
          //         Navigator.pushNamed(
          //           context,
          //           OrderDetailScreen.routeName,
          //           arguments: orders![index],
          //         );
          //       },
          //       child: SingleProduct(
          //         image: orders![index].products[0].images[0],
          //       ),
          //     );
          //   },
          // ),
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return SingleProduct(
                image: list[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
