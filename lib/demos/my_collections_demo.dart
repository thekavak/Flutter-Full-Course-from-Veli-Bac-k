import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  MyCollectionsDemos({Key? key}) : super(key: key);

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _items = [
      CollectionModel(
          imagePath: 'assets/2.jpeg', title: 'Abstract Arts', price: '39.9'),
      CollectionModel(
          imagePath: 'assets/2.jpeg', title: 'Abstract Arts', price: '39.9'),
      CollectionModel(
          imagePath: 'assets/2.jpeg', title: 'Abstract Arts', price: '39.9')
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 20),
            child: SizedBox(
              height: 310,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Image.asset(
                      _items[index].imagePath,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(_items[index].title),
                          Text(_items[index].price + 'ETH'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final String price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}
