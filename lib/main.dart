import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerlecture/provider/Exampleoneprovider.dart';
import 'package:providerlecture/provider/count_provider.dart';
import 'package:providerlecture/provider/favourite_provider.dart';
import 'package:providerlecture/screen/count_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
        ChangeNotifierProvider(create: (_) =>Countprovider()),
      ChangeNotifierProvider(create: (_) =>Exampleoneprovider()),
      ChangeNotifierProvider(create: (_) =>FavouriteProvider()),
    ],
        child:  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              color: Colors.pink.shade700,
            ),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          home: CountScreen(),
        ),
    );


  }
}


