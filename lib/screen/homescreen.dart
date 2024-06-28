import 'package:advance_flutter_exam/screen/detils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/news_provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(listen: true, context);
    final providerF = Provider.of<HomeProvider>(listen: false, context);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          size: 25,
          color: Colors.black,
        ),
        title: Text(
          'News App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              size: 25,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Provider.of<HomeProvider>(context).isloding
          ? CircularProgressIndicator()
          : Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'See more',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 250,
                      width: 420,
                      child:
                          Image.asset(fit: BoxFit.cover, 'assets/img/m1.jpg')),
                  Text(
                    'Latest news',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Detils(),
                            ));
                      },
                      child: ListView.builder(
                        itemCount: provider.data!.sources!.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ListTile(
                                leading: Image.asset('assets/img/m1.jpg'),
                                subtitle: Text(provider
                                    .data!.sources![index].description
                                    .toString()),
                                title: Text(
                                  provider.data!.sources![index].name
                                      .toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
