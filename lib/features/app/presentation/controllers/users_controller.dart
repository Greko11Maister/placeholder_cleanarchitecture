import 'dart:developer';

import 'package:get/get.dart';
import 'package:placeholder_cleanarchitecture/core/usecases/usecase.dart';
import 'package:placeholder_cleanarchitecture/features/domain/entities/user_entity.dart';
import 'package:placeholder_cleanarchitecture/features/domain/usecase/get_users_use_case.dart';
import 'package:meta/meta.dart';
class UsersController extends GetxController {
  final GetUsersUseCase? _getUsersUseCase;
  RxList<UserEntity> users = <UserEntity>[].obs;

  UsersController({@required GetUsersUseCase? getUsersUseCase}) : assert(getUsersUseCase != null), _getUsersUseCase =  getUsersUseCase;

  @override
  void onReady() {
    loadData();
    super.onReady();
  }

  Future<void> loadData() async {
    final res = await _getUsersUseCase?.call(NoParams());
    res?.fold((l) {

      log("${l.message}", name: "Error al consultar usuarios");
    }, (r) {
      this.users.addAll(r);
    });
  }
}