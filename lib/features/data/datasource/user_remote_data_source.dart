import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:placeholder_cleanarchitecture/core/error/failures.dart';
import 'package:placeholder_cleanarchitecture/core/http/api.dart';
import 'package:placeholder_cleanarchitecture/features/data/models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<List<UserModel>> getUsers();
}

class UserRemoteDataSourceImpl extends ApiProvider implements UserRemoteDataSource {

  @override
  Future<List<UserModel>> getUsers() async {
    try{
      final res =  await dio?.get("/users");
      log("$res", name: "El resltado de la consulta");
      return (res?.data as List).map((json) => UserModel.fromJson(json)).toList();
    } on DioError catch(err){
      log("${err}", name: "Error- users");
      throw ServerFailure(error: err).extract;
    }
  }

}