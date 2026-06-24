import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerlecture/provider/count_provider.dart';
class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  @override
  Widget build(BuildContext context) {
    print('Whole Screen Build');
    final countProvider = Provider.of<Countprovider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('CountApp',style: TextStyle(
          fontSize: 25,fontWeight: FontWeight.bold,
        ),),
      ),
      body:
          Center(
            child: Consumer<Countprovider>(builder: (context, value, child){
              print('Add name');
              return  Text(value.count.toString(),style: TextStyle(
                fontSize: 50,
              ),);
            }),
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          countProvider.setCount();
        },
        child: Icon(Icons.add,color: Colors.pink,),
      ),
    );
  }
}
