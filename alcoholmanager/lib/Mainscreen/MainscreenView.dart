import 'package:alcoholmanager/AlcoholService.dart';
import 'package:alcoholmanager/Mainscreen/Mainscreen.dart';
import 'package:alcoholmanager/Mainscreen/Widget/DrinkCard.dart';
import 'package:flutter/material.dart';
import 'package:sliver_fab/sliver_fab.dart';
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
                background: Image.network(
                  "https://gdb.voanews.com/94005114-AEB2-4C0B-AC85-FC2605E2B75E_cx0_cy3_cw0_w1023_r1_s.jpg",
                  fit: BoxFit.cover,),

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


          
          
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 0.0,
        child: new Icon(Icons.add),
          backgroundColor: new Color(0xFFE57373),
          onPressed: (){}
        ),
        
       
      ),

    );
  }

}