import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            _IteWList(image: "assets/img.png", title: "Samandar",price: "222"),
            _IteWList(image: "assets/img.png", title: "Samandar",price: "222"),
            _IteWList(image: "assets/img.png", title: "Samandar",price: "222"),
            _IteWList(image: "assets/img.png", title: "Samandar",price: "222"),
            _IteWList(image: "assets/img.png", title: "Samandar",price: "222"),
          ],
        ));
  }

  Widget _IteWList({image, title, price}) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(


                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: AssetImage(image),fit: BoxFit.cover
                    )
                  )),
              SizedBox(
                width: 20,
              ),
              Text(title),
            ],
          ),
          Text(price)
        ],
      ),
    );
  }
}
