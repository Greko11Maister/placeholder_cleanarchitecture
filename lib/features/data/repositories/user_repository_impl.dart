import 'package:dartz/dartz.dart';
import 'package:placeholder_cleanarchitecture/core/error/failures.dart';
import 'package:placeholder_cleanarchitecture/features/data/datasource/user_remote_data_source.dart';
import 'package:placeholder_cleanarchitecture/features/domain/entities/user_entity.dart';
import 'package:placeholder_cleanarchitecture/features/domain/repositories/user_repository.dart';
import 'package:meta/meta.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource? remoteDataSource;

  UserRepositoryImpl({@required this.remoteDataSource});

  @override
  Future<Either<Failure, List<UserEntity>>> getUsers() async {
   try{
     final res = await remoteDataSource!.getUsers();
     return Right(res);
   } on ServerFailure catch (error){
     return Left(error);
   }
  }

}