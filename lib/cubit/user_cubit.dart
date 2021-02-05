import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:bwa_foodmarket/models/models.dart';
import 'package:bwa_foodmarket/services/services.dart';
import 'package:equatable/equatable.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  Future<void> signIn(String email, String password) async {
    ApiReturnValue<User> result = await UserServices.signIn(email, password);

    if (result.value != null) {
      emit(UserLoaded(result.value));
    } else {
      emit(UserLoadingFailed(result.message));
    }
  }

  Future<void> signUp(User user, String password, {File pictureFile}) async {
    ApiReturnValue<User> result =
        await UserServices.signUp(user, password, pictureFile: pictureFile);

    if (result.value != null) {
      emit(UserLoaded(result.value));
    } else {
      emit(UserLoadingFailed(result.message));
    }
  }

  Future<void> uploadProfilePicture(File pictureFile) async {
    ApiReturnValue<String> result =
        await UserServices.uploadProfilePicture(pictureFile);

    if (result.value != null) {
      emit(UserLoaded((state as UserLoaded).user.copyWith(
          picturePath:
              "http://192.168.100.19/bwa-foodmarket-backend/public/storage/" +
                  result.value)));
    }
  }

  Future<void> signOut() async {
    ApiReturnValue<bool> result = await UserServices.signOut();

    if (result.value != null) {
      return true;
    } else {
      emit(UserLoadingFailed(result.message));
    }
  }
}
