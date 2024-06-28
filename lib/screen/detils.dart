import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/news_provider.dart';

class Detils extends StatelessWidget {
  const Detils({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(listen: true, context);
    final providerF = Provider.of<HomeProvider>(listen: false, context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 300,
              width: 450,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/img/m1.jpg'))),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: provider.data!.sources!.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
