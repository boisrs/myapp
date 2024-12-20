import 'package:flutter/material.dart';

class SupplierPage extends StatefulWidget {
  const SupplierPage({super.key});

  @override
  State<SupplierPage> createState() => _SupplierPageState();
}

class _SupplierPageState extends State<SupplierPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ຈັດການຂໍ້ມູນຜູ້ສະຫນອງ'),
      ),
      body: Center(
        child: Text('ຂໍ້ມູນຜູ້ສະຫນອງ'),
      ),
    );
  }
}