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
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              decoration:  BoxDecoration(
                color: Color.fromRGBO(25, 25, 25, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 42,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 0.8,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: Center(
                        child: CinemanaText(text: "hello"),
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
