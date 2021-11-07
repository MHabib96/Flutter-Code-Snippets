import 'package:equatable/equatable.dart';

class LocalStorageState extends Equatable {
  final String username;
  final int phoneNumber;

  const LocalStorageState({required this.username, required this.phoneNumber});

  LocalStorageState copyWith({String? username, int? phoneNumber}) {
    return LocalStorageState(
      username: username ?? this.username,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  @override
  List<Object> get props => [username, phoneNumber];
}
