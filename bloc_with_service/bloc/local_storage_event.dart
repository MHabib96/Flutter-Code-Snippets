abstract class LocalStorageEvent {}

class ChangeUsername extends LocalStorageEvent {
  final String username;
  ChangeUsername(this.username);
}

class ChangePhoneNumber extends LocalStorageEvent {
  final int phoneNumber;
  ChangePhoneNumber(this.phoneNumber);
}
