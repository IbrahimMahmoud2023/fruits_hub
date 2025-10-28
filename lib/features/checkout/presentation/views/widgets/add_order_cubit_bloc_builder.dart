import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_ecommerec/core/widgets/custom_progress_hud.dart';
import 'package:fruits_ecommerec/features/auth/presentation/views/widgets/show_snack_bar.dart';

import '../../manager/add_order_cubit/add_order_cubit.dart';

class AddOrderCubitBlocBuilder extends StatelessWidget {
  const AddOrderCubitBlocBuilder({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      builder: (context, state) {
        return CustomProgressHud(
            isLoading: state is AddOrderLoading,
            child: child);
      },
      listener: (context, state) {
        if(state is AddOrderSuccess) {
          showSnackBar(context, 'تمت العمليه بنجاح', Colors.green);
        }
        if(state is AddOrderFailure) {
          showSnackBar(context, state.errorMessage, Colors.red);
        }
      },
    );
  }
}
