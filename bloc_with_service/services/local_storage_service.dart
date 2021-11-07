import 'package:playground/modules/local_storage/interfaces/i_local_storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService implements ILocalStorageService {
  static const _usernameKey = 'username_key';
  static const _phoneNumberKey = 'phone_number_key';

  static const _usernameDefaultValue = 'default_value';
  static const _phoneNumberDefaultValue = 0;

  final SharedPreferences sharedPreferences;

  LocalStorageService({required this.sharedPreferences});

  @override
  String get username {
    return sharedPreferences.getString(_usernameKey) ?? _usernameDefaultValue;
  }

  @override
  set username(String username) {
    sharedPreferences.setString(_usernameKey, username);
  }

  @override
  int get phoneNumber {
    return sharedPreferences.getInt(_phoneNumberKey) ?? _phoneNumberDefaultValue;
  }

  @override
  set phoneNumber(int phoneNumber) {
    sharedPreferences.setInt(_phoneNumberKey, phoneNumber);
  }
}
