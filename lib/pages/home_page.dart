import 'package:flutter/material.dart';
import 'package:myappecom/models/catalog.dart';
import 'package:myappecom/widgets/item_widgets.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final String pageName = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWigets(item: CatalogModel.items[index]);
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
