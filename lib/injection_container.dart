

import 'package:get_it/get_it.dart';
import 'package:placeholder_cleanarchitecture/features/data/datasource/user_remote_data_source.dart';
import 'package:placeholder_cleanarchitecture/features/data/repositories/user_repository_impl.dart';
import 'package:placeholder_cleanarchitecture/features/domain/repositories/user_repository.dart';
import 'package:placeholder_cleanarchitecture/features/domain/usecase/get_users_use_case.dart';

final sl = GetIt.instance;


Future<void> init() async {

  /*
   Use Cases
   */
 sl.registerLazySingleton(() => GetUsersUseCase(sl()));

 /*
 Repositories
  */

  sl.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(remoteDataSource: sl()));

 /*
   Remote Data Source
  */
  sl.registerLazySingleton<UserRemoteDataSource>(() => UserRemoteDataSourceImpl());
}