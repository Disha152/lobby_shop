import 'package:get_storage/get_storage.dart';

class CustomLocalStorage {
  static final CustomLocalStorage _instance = CustomLocalStorage._();
  CustomLocalStorage._();
  factory CustomLocalStorage() {
    return _instance;
  }

  CustomLocalStorage._internal();

  final _storage = GetStorage();

  Future<void> writeData(String key, dynamic value) async {
    await _storage.write(key, value);
  }

  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  T? readData<T>(String key) {
    return _storage.read(key);
  }

  bool? getDataExist(
    String key,
  ) {
    return _storage.hasData(key);
  }

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  Future<void> clearAll() async {
    await _storage.erase();
  }

}
 