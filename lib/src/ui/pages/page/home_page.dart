import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final storage = GetStorage();
  final productCart = GetStorage('cart');

  late final VoidCallback listen;

  @override
  void initState() {
    /*    storage.listen(() {
       debugPrint('O Storage foi alterado!!!');
    }); */

    storage.listenKey('nameKey', (value) {
      debugPrint('O nameKey foi alterado!!!');
    });

    super.initState();
  }

  @override
  void dispose() {
    listen();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var name = storage.read('nameKey') ?? 'Sem Nome';
    var nameProduct = productCart.read('nameKey') ?? 'Sem Nome';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Nome: $name',
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                storage.write('nameKey', 'João Batista');
                setState(() {});
              },
              child: const Text('Adicionar Nome storage'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                storage.remove('nameKey');
                setState(() {});
              },
              child: const Text('Remover Nome storage'),
            ),
            const SizedBox(height: 20),
            Text(
              'Nome Produto: $nameProduct',
            ),
            ElevatedButton(
              onPressed: () {
                productCart.write('nameKey', 'Teclado Digital');
                setState(() {});
              },
              child: const Text('Adicionar Nome Produto'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                productCart.remove('nameKey');
                setState(() {});
              },
              child: const Text('Remover Nome produto'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
