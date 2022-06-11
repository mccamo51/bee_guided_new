import 'package:bee_guided/ui/home/search_page.dart';
import 'package:bee_guided/util/color.dart';
import 'package:bee_guided/view_model/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Categories",
            style: TextStyle(color: black),
          ),
          elevation: 1,
          backgroundColor: white,
          centerTitle: true,
          iconTheme: const IconThemeData(color: black),
        ),
        body: ListView.builder(
            itemCount: context.read<CategoryProvider>().category.data!.length,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              var data = context.read<CategoryProvider>().category.data!;
              return ListTile(
                title: Text("${data[index].desc}"),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
                onTap: (){
                   Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>  SearchPage(
                                      searchID: data[index].code,
                                      searchName: data[index].desc,
                                    )));
                },
              );
            }));
  }
}
