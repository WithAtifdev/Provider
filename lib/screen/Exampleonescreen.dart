import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerlecture/provider/Exampleoneprovider.dart';
class Exampleonescreen extends StatefulWidget {
  const Exampleonescreen({super.key});

  @override
  State<Exampleonescreen> createState() => _ExampleonescreenState();
}

class _ExampleonescreenState extends State<Exampleonescreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Exampleoneprovider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ExampleOne',style: TextStyle(
          fontSize: 25,fontWeight: FontWeight.bold,
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Slider(
              value: provider.value,
              onChanged: (double val){
                provider.setValue(val);
              },
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(provider.value),
                  ),
                  child: Center(child: Text('Add')),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(provider.value),
                  ),
                  child: Center(child: Text('Add')),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
