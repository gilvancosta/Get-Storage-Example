import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var name = GetStorage().read('nameKey') ?? 'Sem Nome';

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
                GetStorage().write('nameKey', 'João Batista');
                setState(() {});
              },
              child: const Text('Adicionar Nome'),
            ),
          ],
        ),
      ),
    );
  }
}
