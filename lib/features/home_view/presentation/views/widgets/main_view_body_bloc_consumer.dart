import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/show_snack_bar.dart';

import '../../cubits/cart_cubit/cart_cubit.dart';
import 'main_view_body.dart';

class MainViewBodyBlocConsumer extends StatelessWidget {
  const MainViewBodyBlocConsumer({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartState>(
      listener: (context, state) {
        if(state is CartItemAdded){
          showSnackBar(context, 'تم أضافه المنتج بنجاح', Colors.green);
        }
      },
      child: MainViewBody(currentIndex: currentIndex),
    );
  }
}