import 'package:flutter/material.dart';
import 'package:same_wave_app/components/custom_background.dart';
import 'package:same_wave_app/components/custom_menu/custom_menu.dart';
import 'package:same_wave_app/resources/app_assets/app_assets.dart';
import 'package:same_wave_app/screens/payments/payments.dart';

class PaymentsScreenView extends StatefulWidget {
  final PaymentsScreenState state;
  const PaymentsScreenView(this.state, {super.key});

  @override
  State<PaymentsScreenView> createState() => _PaymentsScreenViewState();
}

class _PaymentsScreenViewState extends State<PaymentsScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomBackground(image: AppAssets.menuBackground),
          const CustomMenu(),
          const Column(
            children: [
              Center(
                child: Card(
                  child: Text(
                    'Payments',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
