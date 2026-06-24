
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerlecture/provider/favourite_provider.dart';
import 'package:providerlecture/screen/favouriteItem_app.dart';
class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavouriteProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite Screen'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>FavouriteItemApp()));
              },
                child: Icon(Icons.favorite,size: 30,color: Colors.white,)),
          ),
        ],
      ),
body: ListView.builder(
  itemCount: 10,
    itemBuilder: (context,index){
  return ListTile(
    onTap: (){
      if(provider.selectItem.contains(index)){
        provider.removeItem(index);
      }
      else{
        provider.addItem(index);
      }
    },
    title: Text('Item $index'.toString()),
    trailing: Icon(
      provider.selectItem.contains(index)?
        Icons.favorite: Icons.favorite_outline
    ),
  );
}),
    );
  }
}
