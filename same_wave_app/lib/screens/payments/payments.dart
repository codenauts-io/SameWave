import 'package:flutter/material.dart';
import 'package:same_wave_app/screens/payments/payments_view.dart';

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({super.key});

  @override
  State<PaymentsScreen> createState() => PaymentsScreenState();
}

class PaymentsScreenState extends State<PaymentsScreen> {
  @override
  Widget build(BuildContext context) => PaymentsScreenView(this);
}
