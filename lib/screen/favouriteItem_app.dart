import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerlecture/provider/favourite_provider.dart';
class FavouriteItemApp extends StatefulWidget {
  const FavouriteItemApp({super.key});

  @override
  State<FavouriteItemApp> createState() => _FavouriteItemAppState();
}

class _FavouriteItemAppState extends State<FavouriteItemApp> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavouriteProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Favourite App'),
      ),
      body: ListView.builder(
          itemCount: provider.selectItem.length,
          itemBuilder: (context,index){
            return ListTile(
              onTap: (){
                if(provider.selectItem.contains(index)){
                  provider.removeItem(index);
                }
              },
              title: Text('Item $index'.toString()),
              trailing: Icon(
                  provider.selectItem.contains(index)?
                 Icons.favorite:Icons.favorite_outline,
              ),
            );
          }),

    );
  }
}
