// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/orders.dart' show Orders;
import 'package:shop_app/widgets/app_drawer.dart';
import 'package:shop_app/widgets/order_item.dart';

class OrdersScreen extends StatefulWidget {
  static const routeName = '/orders';

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  Future? _ordersFuture;

  Future _obtainOrdersFuture() {
    return Provider.of<Orders>(context, listen: false).fetchOrders();
  }

  @override
  void initState() {
    _ordersFuture = _obtainOrdersFuture();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final orderData = Provider.of<Orders>(context);
    return Scaffold(
        appBar: AppBar(title: const Text('Your Orders')),
        drawer: AppDrawer(),
        body: FutureBuilder(
          future: _ordersFuture,
          builder: (ctx, dataSnapshot) {
            if (dataSnapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              if (dataSnapshot.error != null) {
                // error handling
                return const Center(
                  child: Text('An error occurred'),
                );
              } else {
                return Consumer<Orders>(
                  builder: (ctx, orderData, child) => ListView.builder(
                    itemBuilder: (ctx, i) => OrderItem(orderData.orders[i]),
                    itemCount: orderData.orders.length,
                  ),
                );
              }
            }
          },
        ));
  }
}
