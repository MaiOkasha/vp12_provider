import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  String message = 'Welcome2';

  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      create: (context)=> message,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const AppBarTitle(),
          ),
          body: const ScaffoldBody(),
        ),
      ),
    );
  }
}
class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<String>(context));
  }
}
class ScaffoldBody extends StatelessWidget {
  const ScaffoldBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      create: (context)=>'1',
      child: Column(

        children: const [
          AppMessage(),


        ],
      ),
    );
  }
}
class AppMessage extends StatelessWidget {
  const AppMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<String>(context));
  }
}


