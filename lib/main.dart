import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sampleprovider/controller/add_provider.dart';
import 'package:sampleprovider/controller/counter_provider.dart';
import 'package:sampleprovider/home.dart';

void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AddProvider(),),
        ChangeNotifierProvider(create: (context) => CounterProvider(),),
      ],
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}