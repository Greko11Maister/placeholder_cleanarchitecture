
import 'package:dartz/dartz.dart';
import 'package:placeholder_cleanarchitecture/core/error/failures.dart';
import 'package:placeholder_cleanarchitecture/features/domain/entities/user_entity.dart';




abstract class UserRepository {

  Future<Either<Failure, List<UserEntity>>> getUsers();

}