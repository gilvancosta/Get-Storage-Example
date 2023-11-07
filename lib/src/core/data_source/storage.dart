import 'package:get_storage/get_storage.dart';

class Storage {
  //final _name = ReadWriteValue('nameKey', '');
  //final  _productName = ReadWriteValue('nameKey', '', () => GetStorage('cart'));


  // Goal here is to simplify the use of GetStorage
  final _name = ''.val('nameKey');
  final _productName = ''.val(
    'nameKey',
    getBox: () => GetStorage('cart'),
  );

  String get getName => _name.val; // Getter para o objeto _name
  set setName(String value) => _name.val = value; // Setter para o objeto _name

  String get getProductName => _productName.val;
  set setProductName(String value) => _productName.val = value;
}
