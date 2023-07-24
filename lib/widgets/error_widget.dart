import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_app/bloc/todos_bloc.dart';

import '../cubit/todos01_cubit.dart';
class MyErrorWidget extends StatelessWidget {
  final String message;
  const MyErrorWidget({Key? key,required this.message}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          ElevatedButton(onPressed: (){
            BlocProvider.of<Todos01Cubit>(context).GetAllTodosFromApi();
          }, child: Text('try again'))
        ],
      ),
    );
  }
}
