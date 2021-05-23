import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placeholder_cleanarchitecture/features/app/presentation/controllers/users_controller.dart';
import 'package:placeholder_cleanarchitecture/features/data/datasource/user_remote_data_source.dart';
import 'package:placeholder_cleanarchitecture/features/data/repositories/user_repository_impl.dart';
import 'package:placeholder_cleanarchitecture/features/domain/usecase/get_users_use_case.dart';

import '../../../../../injection_container.dart';
class HomePage extends StatefulWidget {
  static const String routeName = "/home/page";


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late UsersController _controller;

  @override
  void initState() {
     _controller = UsersController(getUsersUseCase: sl());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
     body: RefreshIndicator(
       child: GetBuilder<UsersController>(
           init: _controller,
           builder: (_) {
          return Obx((){
            return ListView.builder(
                itemCount: _.users.length,
                itemBuilder: (context, index){
              return ListTile(
                title: Text(_.users[index].name.toString()),
              );
            });
          });
       }),
       onRefresh: _controller.loadData,
     ),
    );
  }
}
