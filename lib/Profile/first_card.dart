import 'package:flutter/material.dart';

import '../MainColors.dart';
import '../Reusable Widgets/text_widget.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.maxFinite,
      child: Card(
                color: MainColors.shadowedMainColor,
                child: Center(
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://i.pinimg.com/originals/3e/40/78/3e4078a76850ccf2f92a3a9087da7cff.jpg"),
                        radius: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CinemanaText(text: "Saif Alhaider"),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: CinemanaText(
                                text: "xxsaifxx",
                                fontsize: 20,
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            CinemanaText(
                              text: "saifharith90@gmail.com",
                              fontsize: 20,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
    );
  }
}