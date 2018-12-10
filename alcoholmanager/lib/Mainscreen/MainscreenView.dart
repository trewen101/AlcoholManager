import 'package:alcoholmanager/AlcoholService.dart';
import 'package:alcoholmanager/Mainscreen/Mainscreen.dart';
import 'package:alcoholmanager/Mainscreen/Widget/DrinkCard.dart';
import 'package:flutter/material.dart';

class MainscreenView extends MainscreenState{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("data"),
              ),
              floating: true,

            ),
            SliverFixedExtentList(
              itemExtent: 100,
              delegate: SliverChildBuilderDelegate(
                (BuildContext contex, int index){
                  return DrinkCard(widget.testservice.drinkList[index]);
                },
                childCount: widget.testservice.drinkList.length,
              ),)
              /*ListView.builder(
              padding: new EdgeInsets.all(8.0),
              itemCount: widget.testservice.drinkList.length,
              itemBuilder: (BuildContext context, int index) {
                return DrinkCard(widget.testservice.drinkList[index]);
              }),*/
          ]


          
          
        )
        
        
       
      ),

    );
  }

}