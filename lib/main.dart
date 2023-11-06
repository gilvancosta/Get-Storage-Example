import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'src/app.dart';

Future<void> main() async {
await GetStorage.init();
await GetStorage.init('cart');


  runApp(const MyApp());
}

