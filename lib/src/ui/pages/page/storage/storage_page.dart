import 'package:flutter/material.dart';

import '../../../../core/data_source/storage.dart';

class StoragePage extends StatefulWidget {
  const StoragePage({super.key});

  @override
  State<StoragePage> createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> {
  final storage = Storage();

  late final VoidCallback listen;

  @override
  Widget build(BuildContext context) {
    // var name = storage.read('nameKey') ?? 'Sem Nome';
    // var nameProduct = productCart.read('nameKey') ?? 'Sem Nome';

    return Scaffold(
      appBar: AppBar(
        title: const Text('página Storage'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Nome: ${storage.getName}',
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              storage.setName = 'João Batista';
              setState(() {});
            },
            child: const Text('Adicionar Nome storage'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              storage.setName = '';
              setState(() {});
            },
            child: const Text('Remover Nome storage'),
          ),
          const SizedBox(height: 20),
          Text(
            'Nome Produto: ${storage.getProductName}',
          ),
          ElevatedButton(
            onPressed: () {
              storage.setProductName = 'Teclado Digital';
              setState(() {});
            },
            child: const Text('Adicionar Nome Produto'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              storage.setProductName = '';
              setState(() {});
            },
            child: const Text('Remover Nome produto'),
          ),
        ],
      )),
    );
  }
}
