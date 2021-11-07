import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground/modules/local_storage/bloc/local_storage_event.dart';
import 'package:playground/modules/local_storage/bloc/local_storage_state.dart';
import 'package:playground/modules/local_storage/interfaces/i_local_storage_service.dart';

class LocalStorageBloc extends Bloc<LocalStorageEvent, LocalStorageState> {
  final ILocalStorageService localStorageService;

  LocalStorageBloc({required this.localStorageService})
      : super(LocalStorageState(
          username: localStorageService.username,
          phoneNumber: localStorageService.phoneNumber,
        ));

  @override
  Stream<LocalStorageState> mapEventToState(LocalStorageEvent event) async* {
    if (event is ChangeUsername) {
      localStorageService.username = event.username;
      yield state.copyWith(username: event.username);
    }
    if (event is ChangePhoneNumber) {
      localStorageService.phoneNumber = event.phoneNumber;
      yield state.copyWith(phoneNumber: event.phoneNumber);
    }
  }
}
