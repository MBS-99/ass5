import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home_Page());
}

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List phoneImages = [
    "Images/galaxy_s22_ultra.jpg",
    "Images/Samsung-Galaxy-Z-Fold-4.jpg",
    "Images/iphone14_pro_max.jpg",
    "Images/pixel_6pro.jpg",
    "Images/Xiaomi12_Pro.jpg",
    "Images/Oppo_Find_X5_Pro.jpg",
    "Images/vivo_x80_pro.jpg"
  ];
  List phoneNames = [
    "1- Galaxy S22 Ultra",
    "2- Galaxy Z Fold 4",
    "3- Iphone 14 Pro Max",
    "4- Google Pixel 6 Pro",
    "5- Xiaomi 12 Pro",
    "6- Oppo Find X5 Pro",
    "7- Vivo X80 Pro"
  ];
  List phoneSubTitles = [
    "Qualcomm SM8450 Snapdragon 8 Gen 1 (4 nm)",
    "Qualcomm SM8475 Snapdragon 8+ Gen 1 (4 nm)",
    "Apple A16 Bionic (4 nm)",
    "Google Tensor (5 nm)",
    "Qualcomm SM8450 Snapdragon 8 Gen 1 (4 nm)",
    "Qualcomm SM8450 Snapdragon 8 Gen 1 (4 nm)",
    "Qualcomm SM8450 Snapdragon 8 Gen 1 (4 nm)"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Text(
              "Best Flagship phones in 2022",
              textAlign: TextAlign.center,
              style: TextStyle(
                  backgroundColor: Colors.lightBlue.shade100,
                  color: Colors.cyan,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: phoneNames.length,
              itemBuilder: (BuildContext context, int i) {
                return Container(
                  color: Colors.lightBlue.shade100,
                  child: ListTile(
                    isThreeLine: true,
                    trailing: Icon(Icons.phone_iphone),
                    title: Text("${phoneNames[i]}",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text("${phoneSubTitles[i]}"),
                    leading: Image(image: AssetImage("${phoneImages[i]}")),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
