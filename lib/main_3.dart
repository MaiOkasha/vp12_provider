import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  String message = 'Welcome2';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MessageProvider>(
      create: (context)=> MessageProvider(),
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
    return Text(Provider.of<MessageProvider>(context).message);
  }
}
class ScaffoldBody extends StatelessWidget {
  const ScaffoldBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<int>(
      create: (context)=>1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          AppMessage(),
          AppTextfield(),

        ],
      ),
    );
  }
}
class AppMessage extends StatelessWidget {
  const AppMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<MessageProvider>(context).message);
  }
}
class AppTextfield extends StatelessWidget {
  const AppTextfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (String value){
        //TODO : Implement Provider
       Provider.of<MessageProvider>(context,listen: false).changeMessage(value);
      },
    );
  }
}
class MessageProvider extends ChangeNotifier{
  String message = 'Welcome Message22';
  void changeMessage(String message){
    this.message = message;
    notifyListeners();

  }
}
