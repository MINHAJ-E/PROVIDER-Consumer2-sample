

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sampleprovider/controller/add_provider.dart';
import 'package:sampleprovider/controller/counter_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber,),
    body: Consumer2<AddProvider,CounterProvider>(builder: 
    (context, first,second, child) => Column(
      children: [
        Text("${second.counte}"),
        TextField(
          controller:first.number1,
        ),
        TextField(
         controller:first. number2
        ),
        ElevatedButton(onPressed: (){
      
         first. addd();
        
        }, child: const Text("add")),
        Text((first.output).toString()),
        ElevatedButton(onPressed: (){second.inncremen();}, child: const Text("Counter")),
      ],
      ),
    ),
    );
  }
}

