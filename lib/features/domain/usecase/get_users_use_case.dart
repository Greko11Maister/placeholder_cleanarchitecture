import 'package:dartz/dartz.dart';
import 'package:placeholder_cleanarchitecture/core/error/failures.dart';
import 'package:placeholder_cleanarchitecture/core/usecases/usecase.dart';
import 'package:placeholder_cleanarchitecture/features/domain/entities/user_entity.dart';
import 'package:placeholder_cleanarchitecture/features/domain/repositories/user_repository.dart';

class GetUsersUseCase implements UseCase<List<UserEntity>, NoParams>{

  final UserRepository repository;

  GetUsersUseCase(this.repository);

  @override
  Future<Either<Failure, List<UserEntity>>> call(NoParams params) async {
    return await repository.getUsers();
  }

}