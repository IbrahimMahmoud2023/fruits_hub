import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/core/helper_function/get_user.dart';
import 'package:fruits_ecommerec/core/widgets/build_app_bar.dart';
import 'package:fruits_ecommerec/features/checkout/domain/entites/order_entity.dart';
import 'package:fruits_ecommerec/features/checkout/presentation/views/widgets/add_order_cubit_bloc_builder.dart';
import 'package:fruits_ecommerec/features/checkout/presentation/views/widgets/checkout_view_body.dart';
import 'package:fruits_ecommerec/features/home_view/domain/entites/cart_entity.dart';
import 'package:provider/provider.dart';

import '../../../../core/repos/orders_repo/orders_repo.dart';
import '../../../../core/services/git_it_services.dart';
import '../../domain/entites/address_entites.dart';
import '../manager/add_order_cubit/add_order_cubit.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key, required this.cartEntity});

  static const String routeName = 'checkout_view';
  final CartEntity cartEntity;

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  late OrderEntity orderEntity;

  @override
  void initState() {
    super.initState();
    orderEntity = OrderEntity(
      uId: getUser().uId,
      cartEntity: widget.cartEntity,
      addressShipping: AddressShipping(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddOrderCubit(getIt.get<OrdersRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: 'الشحن', isNotification: false),
        body: Provider.value(
          value: orderEntity,
          child: AddOrderCubitBlocBuilder(child: CheckoutViewBody()),
        ),
      ),
    );
  }
}
