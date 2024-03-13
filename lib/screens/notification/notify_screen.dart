import 'package:flutter/material.dart';
import 'package:sweet/constants.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
            child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0)),
              border: Border.symmetric(
                  horizontal: BorderSide(color: kPrimaryColor)),
              color: kPrimaryColor),
          child: Center(
            child: Text(
              "Notification",
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
        )),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: Container(
                      width: double.infinity,
                      child: Text(
                        "Recent",
                        style: TextStyle(color: kSecondaryColor),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [...List.generate(2, (index) => commande())],
                  ),
                ),
              ],
            ))
      ],
    ));
  }

  Padding commande() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 2)],
            borderRadius: BorderRadius.circular(10),
            color: Colors.white),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(children: [
            Container(
              width: double.infinity,
              child: Text(
                "Commande n°1233943",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Line(),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: Text.rich(
                TextSpan(text: "produit: ", children: [
                  TextSpan(
                      text: "Robe de princess",
                      style: TextStyle(color: kSecondaryColor))
                ]),
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text.rich(
                TextSpan(text: "date: ", children: [
                  TextSpan(
                      text: "16/04/2023",
                      style: TextStyle(color: kSecondaryColor))
                ]),
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text.rich(
                TextSpan(text: "prix: ", children: [
                  TextSpan(
                      text: "55000 Fcfa",
                      style: TextStyle(color: kPrimaryColor))
                ]),
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text.rich(
                TextSpan(text: "lieu de livraison: ", children: [
                  TextSpan(
                      text: "Cocody, Riviera 3",
                      style: TextStyle(color: kSecondaryColor))
                ]),
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Container Line() {
    return Container(
      height: 2,
      width: double.infinity,
      decoration: BoxDecoration(
          color: kSecondaryColor, borderRadius: BorderRadius.circular(30)),
    );
  }
}
