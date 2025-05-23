import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: Column(
        children: [
          Text(
            "Now playing",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          Container(
            height: 210,
            width: double.infinity,
            child: ListView.builder(itemCount: 10,
                itemBuilder: (_,index){
                    return Container(
                      width: 120,
                      height: 180,
                      color: Color.fromARGB(100, 157, 156, 156),
                      child: Text("Card"),
                    );
                }),
          )
        ],
      ),
    );
  }
}
