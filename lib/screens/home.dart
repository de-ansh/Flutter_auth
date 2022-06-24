import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Container(
          height: 300,
          width: 200,
          /*child: FutureBuilder(
            future: _getImage(context, '1.jpg'),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Container(
                  width: 150,
                  height: 250,
                  //child: snapshot.data,
                );
              }
            },
          ),*/
        )
      ]),
    );
  }

  /*Future<Widget> _getImage(BuildContext context, String ImageName) async {
    Image image;
    await fireStorageService.loadImage(context, ImageName).then((value) {
      image = Image.network(
        value.toString(),
        fit: BoxFit.contain,
      );
    });
    return image;
  }*/
}

class fireStorageService extends ChangeNotifier {
  fireStorageService();
  static Future<dynamic> loadImage(BuildContext context, String Image) async {
    return await FirebaseStorage.instance.ref().child(Image).getDownloadURL();
  }
}
