import 'package:cinemana_clone/MainColors.dart';
import 'package:cinemana_clone/Reusable%20Widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesMain extends StatefulWidget {
  String get pageName => "Categories";
  const CategoriesMain({Key? key}) : super(key: key);

  @override
  State<CategoriesMain> createState() => _CategoriesMainState();
}

class _CategoriesMainState extends State<CategoriesMain> {
  List<String> categorieTitle = [
    "Action","Drama","Comedy","Family","Adventure","Crime","Sci-Fi","Romance","Thriller","Supernatural","Mystery","Biography","Horror","Animation","War","History","Fantasy","Musical"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              decoration:  BoxDecoration(
                color: MainColors.shadowedMainColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: categorieTitle.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 0.8,
                            color: Color.fromARGB(130, 158, 158, 158),
                          ),
                        ),
                      ),
                      child: Center(
                        child: CinemanaText(text: categorieTitle[index],fontsize: 25,),
                      ),
                    ),
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
